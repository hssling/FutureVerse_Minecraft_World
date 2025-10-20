tp @s ~ ~ ~
effect give @s regeneration 300 1
particle minecraft:end_rod ~ ~3 ~ 3 3 3 0 50 force @s
tellraw @s {"text": "Quantum Garden: Immerse in holographic ecosystems, observe thriving life forms!", "color": "green"}
playsound minecraft:ambient.ambient.warm_world.loop ambient @s ~ ~ ~
playsound futureverse.ai.analysis @s ~ ~ ~ 1 1
tellraw @s {"text": "AI Guardian activated to protect the ecosystem!", "color": "cyan"}
summon cow ~5 ~ ~5 {Tags:["ecosystem"]}
summon rabbit ~-5 ~ ~-5 {Attributes:[{Name:"generic.max_health",Base:20}]}
summon futureverse:cyber_wolf ~ ~ ~ {Tags:["guardian"]}
summon futureverse:ai_guardian ~10 ~ ~10 {Tags:["helper"]}
