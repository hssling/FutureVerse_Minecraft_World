gamerule commandblockoutput false
gamerule sendcommandfeedback false
gamerule showcoordinates true
gamerule doWeatherCycle false
gamerule doDaylightCycle false
weather clear 1000000
time set midnight
difficulty normal

scoreboard objectives add futureverse_flags dummy "FutureVerse Flags"
scoreboard objectives add quest_stage dummy "Quest Stage"
scoreboard objectives add energy_cells dummy "Energy Cells"
scoreboard objectives add alien_kills dummy "Alien Eliminations"
scoreboard objectives add guardian_kills dummy "Guardian Defeats"

scoreboard players add #city futureverse_flags 0
execute unless score #city futureverse_flags matches 1 run function builders/city_core
execute unless score #city futureverse_flags matches 1 run scoreboard players set #city futureverse_flags 1

scoreboard players add #zones futureverse_flags 0
execute unless score #zones futureverse_flags matches 1 run function builders/zones
execute unless score #zones futureverse_flags matches 1 run scoreboard players set #zones futureverse_flags 1

function quests/bootstrap

playsound futureverse.city.ambient ambient @a ~ ~ ~ 1 1
tellraw @a {"rawtext":[{"translate":"message.futureverse.welcome"}]}
tellraw @a {"rawtext":[{"translate":"message.futureverse.credits"}]}
