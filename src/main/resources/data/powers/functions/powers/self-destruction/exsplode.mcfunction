summon creeper ^ ^ ^-1 {NoGravity:1b,NoAI:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,Tags:["exsplode"]}
execute at @s as @e[tag=exsplode] store result entity @s ExplosionRadius byte 0.5 run scoreboard players get @p sd.charge
