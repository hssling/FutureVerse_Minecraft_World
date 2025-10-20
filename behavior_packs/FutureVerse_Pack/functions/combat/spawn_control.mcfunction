scoreboard players add #drone_spawn futureverse_flags 1
scoreboard players add #alien_spawn futureverse_flags 1
scoreboard players add #wolf_spawn futureverse_flags 1
scoreboard players add #guardian_spawn futureverse_flags 1

execute if score #drone_spawn futureverse_flags matches 80.. if entity @a[x=0,y=90,z=80,r=40] unless entity @e[type=futureverse:lumina_drone,x=0,y=90,z=80,r=50] run summon futureverse:lumina_drone 0 90 108
execute if score #drone_spawn futureverse_flags matches 80.. run scoreboard players set #drone_spawn futureverse_flags 0

execute if score #alien_spawn futureverse_flags matches 140.. if entity @a[x=-80,y=85,z=0,r=40] unless entity @e[type=futureverse:alien_mob,x=-80,y=85,z=0,r=48] run summon futureverse:alien_mob -80 85 16
execute if score #alien_spawn futureverse_flags matches 140.. run scoreboard players set #alien_spawn futureverse_flags 0

execute if score #wolf_spawn futureverse_flags matches 120.. if entity @a[x=-40,y=82,z=0,r=32] unless entity @e[type=futureverse:cyber_wolf,x=-40,y=82,z=0,r=36] run summon futureverse:cyber_wolf -40 82 0
execute if score #wolf_spawn futureverse_flags matches 120.. run scoreboard players set #wolf_spawn futureverse_flags 0

execute if score #guardian_spawn futureverse_flags matches 220.. if entity @a[x=80,y=85,z=0,r=40] unless entity @e[type=futureverse:ai_guardian,x=80,y=85,z=0,r=48] run summon futureverse:ai_guardian 80 85 -16
execute if score #guardian_spawn futureverse_flags matches 220.. run scoreboard players set #guardian_spawn futureverse_flags 0
