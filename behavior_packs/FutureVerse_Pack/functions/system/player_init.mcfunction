tag @s add futureverse_init
scoreboard players set @s quest_stage 0
scoreboard players set @s energy_cells 0
scoreboard players set @s alien_kills 0
scoreboard players set @s guardian_kills 0
tp @s 0 82 0 facing 0 82 4
setworldspawn 0 82 0
give @s futureverse:welcome_brief
titleraw @s actionbar {"rawtext":[{"translate":"quest.futureverse.progress","with":[{"score":{"name":"@s","objective":"quest_stage"}}]}]}
