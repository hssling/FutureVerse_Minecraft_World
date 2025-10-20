tp @s ~ ~100 ~
particle minecraft:falling_dust minecraft:glowstone_dust ~ ~3 ~ 5 5 5 0 100 force @s
tellraw @s {"text": "Sky District Alert! Defend the metropolis against alien invaders!", "color": "red"}
playsound minecraft:block.portal.travel @s ~ ~ ~ 1 0.5 1
playsound futureverse.alien.alert @s ~ ~ ~ 1 1
summon futureverse:lumina_drone ~5 ~2 ~5 {Tags:["invader"]}
summon futureverse:alien_mob ~-5 ~2 ~-5 {Tags:["invader"]}
particle minecraft:explosion ~ ~5 ~ 10 10 10 0 50 force @s
summon firework_rocket ~ ~5 ~ {LifeTime:5,Motion:[0.0,0.3,0.0],Flight:1,Explosions:[{Flicker:false,Trail:false,Type:4,Colors:[I;16733441,16755302,16733440]}]}
