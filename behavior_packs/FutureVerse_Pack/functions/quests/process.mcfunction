execute as @a[scores={quest_stage=0}] run function quests/stage0_intro
execute as @a[scores={quest_stage=1,energy_cells=3..}] run function quests/stage1_complete
execute as @a[scores={quest_stage=2,alien_kills=2..}] run function quests/stage2_complete
execute as @a[scores={quest_stage=3,guardian_kills=1..}] run function quests/stage3_complete
execute as @a[scores={quest_stage=4}] run function quests/stage4_loop
execute if entity @a[scores={quest_stage=4}] run scoreboard players add #quest futureverse_flags 1
execute unless entity @a[scores={quest_stage=4}] run scoreboard players set #quest futureverse_flags 0
execute if score #quest futureverse_flags matches 200.. run function quests/stage4_reward
execute if score #quest futureverse_flags matches 200.. run scoreboard players set #quest futureverse_flags 0
