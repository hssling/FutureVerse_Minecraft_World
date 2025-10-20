$ErrorActionPreference = 'Stop'

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptRoot
Set-Location $repoRoot

$distPath = Join-Path $repoRoot 'dist'
if (Test-Path $distPath) {
    Remove-Item $distPath -Recurse -Force
}
New-Item -ItemType Directory -Path $distPath | Out-Null

$behaviorPackDir = Join-Path $repoRoot 'behavior_packs\FutureVerse_Pack'
$resourcePackDir = Join-Path $repoRoot 'resource_packs\FutureVerse_Pack'

function Compress-zip {
    param (
        [string]$Source,
        [string]$Destination
    )

    if (Test-Path $Destination) {
        Remove-Item $Destination -Force
    }

    Compress-Archive -Path (Join-Path $Source '*') -DestinationPath $Destination -Force
}

Compress-zip -Source $behaviorPackDir -Destination (Join-Path $distPath 'FutureVerse.behavior.zip')
Compress-zip -Source $resourcePackDir -Destination (Join-Path $distPath 'FutureVerse.resource.zip')

$stagingRoot = Join-Path $repoRoot 'build_staging'
if (Test-Path $stagingRoot) {
    Remove-Item $stagingRoot -Recurse -Force
}
New-Item -ItemType Directory -Path $stagingRoot | Out-Null

$worldRoot = Join-Path $stagingRoot 'FutureVerse_Minecoin_World'
New-Item -ItemType Directory -Path $worldRoot | Out-Null

$includeDirs = @(
    'behavior_packs',
    'resource_packs',
    'scripts',
    'texts',
    'worlds'
)

foreach ($dir in $includeDirs) {
    $sourcePath = Join-Path $repoRoot $dir
    if (Test-Path $sourcePath) {
        Copy-Item $sourcePath -Destination $worldRoot -Recurse
    }
}

$includeFiles = @(
    'manifest.json',
    'level.dat',
    'levelname.txt',
    'pack_icon.png',
    'session.lock',
    'world_behavior_packs.json',
    'world_resource_packs.json'
)

foreach ($file in $includeFiles) {
    $sourceFile = Join-Path $repoRoot $file
    if (Test-Path $sourceFile) {
        Copy-Item $sourceFile -Destination $worldRoot
    }
}

$mcworldZip = Join-Path $distPath 'FutureVerse.mcworld.zip'
Compress-zip -Source $worldRoot -Destination $mcworldZip

$finalMcworld = Join-Path $distPath 'FutureVerse.mcworld'
if (Test-Path $finalMcworld) {
    Remove-Item $finalMcworld -Force
}
Rename-Item -Path $mcworldZip -NewName $finalMcworld

Remove-Item $stagingRoot -Recurse -Force

Write-Host "Created artifacts:"
Get-ChildItem $distPath | ForEach-Object {
    Write-Host (" - {0} ({1} bytes)" -f $_.Name, $_.Length)
}
