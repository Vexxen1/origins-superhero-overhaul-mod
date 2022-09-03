execute at @e[tag=prevpos,limit=1] rotated as @s run tp @s ~ ~ ~
execute at @s align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.125 0 0.125 1 1 normal @a

execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~ ~ ~0.5 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0 0.5 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~0.5 ~ ~ run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0.5 0 0 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~1 ~ ~0.5 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0 0.5 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~0.5 ~ ~1 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0.5 0 0 1 10 normal @s

execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~ ~1 ~0.5 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0 0.5 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~0.5 ~1 ~ run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0.5 0 0 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~1 ~1 ~0.5 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0 0.5 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~0.5 ~1 ~1 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0.5 0 0 1 10 normal @s

execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~ ~0.5 ~1 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0.5 0 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~1 ~0.5 ~ run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0.5 0 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~1 ~0.5 ~1 run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0.5 0 1 10 normal @s
execute unless block ~ ~ ~ #powers:nonsolid align xyz positioned ~ ~0.5 ~ run particle minecraft:dust 0 1 0 0.5 ~ ~ ~ 0 0.5 0 1 10 normal @s

