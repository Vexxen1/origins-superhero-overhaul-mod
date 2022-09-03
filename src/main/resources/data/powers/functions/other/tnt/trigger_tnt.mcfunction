scale delay set pehkui:height 0
scale delay set pehkui:width 0
scale delay set pehkui:motion 0
scale set pehkui:height 0.5
scale set pehkui:width 0.5

execute if entity @s[tag=!sticky] if block ~ ~-0.01 ~ #powers:nonsolid run data modify entity @s NoGravity set value 0b
execute if entity @s[tag=!sticky] unless block ~ ~-0.01 ~ #powers:nonsolid run data modify entity @s NoGravity set value 1b

execute if entity @s[tag=sticky] unless block ~ ~-0.01 ~ #powers:nonsolid run tag @s add stuck
execute if entity @s[tag=sticky] unless block ~ ~0.5 ~ #powers:nonsolid run tag @s add stuck
execute if entity @s[tag=sticky] unless block ~0.25 ~ ~ #powers:nonsolid run tag @s add stuck
execute if entity @s[tag=sticky] unless block ~-0.25 ~ ~ #powers:nonsolid run tag @s add stuck
execute if entity @s[tag=sticky] unless block ~ ~ ~0.25 #powers:nonsolid run tag @s add stuck
execute if entity @s[tag=sticky] unless block ~ ~ ~-0.25 #powers:nonsolid run tag @s add stuck

execute if entity @s[tag=sticky] if entity @s[tag=stuck,tag=!sticked] run playsound minecraft:block.honey_block.fall block @a ~ ~ ~ 3 1
execute if entity @s[tag=sticky] if entity @s[tag=stuck,tag=!sticked] run tag @s add sticked

execute if entity @s[tag=sticky] unless block ~ ~-0.01 ~ #powers:nonsolid run scale set pehkui:motion 0
execute if entity @s[tag=sticky] unless block ~ ~0.5 ~ #powers:nonsolid run scale set pehkui:motion 0
execute if entity @s[tag=sticky] unless block ~0.25 ~ ~ #powers:nonsolid run scale set pehkui:motion 0
execute if entity @s[tag=sticky] unless block ~-0.25 ~ ~ #powers:nonsolid run scale set pehkui:motion 0
execute if entity @s[tag=sticky] unless block ~ ~ ~0.25 #powers:nonsolid run scale set pehkui:motion 0
execute if entity @s[tag=sticky] unless block ~ ~ ~-0.25 #powers:nonsolid run scale set pehkui:motion 0

execute if entity @s[tag=boom] run data modify entity @s Fuse set value 1
