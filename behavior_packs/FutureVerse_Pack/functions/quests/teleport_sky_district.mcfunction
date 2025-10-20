execute if score @s quest_stage matches ..0 run scoreboard players set @s quest_stage 1
playsound futureverse.teleport.effect @s ~ ~ ~ 1 1.1
tp @s 0 90 80 facing 0 90 120
title @s subtitle {"rawtext":[{"translate":"quest.futureverse.step.sky"}]}
