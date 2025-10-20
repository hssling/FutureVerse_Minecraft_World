scoreboard players set @s quest_stage 1
playsound futureverse.teleport.effect @s ~ ~ ~ 0.8 1.2
title @s title {"rawtext":[{"translate":"quest.futureverse.start.title"}]}
title @s subtitle {"rawtext":[{"translate":"quest.futureverse.start.subtitle"}]}
give @s futureverse:laser_sword 1
give @s futureverse:glowing_helmet 1
give @s futureverse:anti_gravity_boots 1
give @s futureverse:rocket_part 1
effect @s regeneration 6 1 true
function quests/hologram_ring
