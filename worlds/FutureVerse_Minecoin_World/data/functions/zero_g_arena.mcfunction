tp @s ~ ~200 ~
effect give @s levitation 300 1
particle minecraft:nautilus ~ ~10 ~ 10 10 10 0 200 force @s
tellraw @s {"text": "Zero-G Arena: Gravity is disabled! Engage in epic space battles!", "color": "blue"}
playsound minecraft:entity.enderman.teleport @s ~ ~ ~ 1 0.1 1
summon futureverse:alien_mob ~10 ~ ~10 {Tags:["arena_enemy"], Attributes:[{Name:"generic.attack_damage",Base:8}]}
summon futureverse:lumina_drone ~-10 ~ ~-10 {Tags:["arena_enemy"]}
