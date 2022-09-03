scale delay set pehkui:height 0
scale delay set pehkui:width 0
scale delay set pehkui:motion 0
scale set pehkui:height 0.5
scale set pehkui:width 0.5

execute unless block ~ ~-0.01 ~ #powers:nonsolid run tag @s add stuck
execute unless block ~ ~0.5 ~ #powers:nonsolid run tag @s add stuck
execute unless block ~0.25 ~ ~ #powers:nonsolid run tag @s add stuck
execute unless block ~-0.25 ~ ~ #powers:nonsolid run tag @s add stuck
execute unless block ~ ~ ~0.25 #powers:nonsolid run tag @s add stuck
execute unless block ~ ~ ~-0.25 #powers:nonsolid run tag @s add stuck

execute if entity @s[tag=stuck,tag=!sticked] run playsound minecraft:block.honey_block.fall block @a ~ ~ ~ 3 1
execute if entity @s[tag=stuck,tag=!sticked] run tag @s add sticked

execute unless block ~ ~-0.01 ~ #powers:nonsolid run scale set pehkui:motion 0
execute unless block ~ ~0.5 ~ #powers:nonsolid run scale set pehkui:motion 0
execute unless block ~0.25 ~ ~ #powers:nonsolid run scale set pehkui:motion 0
execute unless block ~-0.25 ~ ~ #powers:nonsolid run scale set pehkui:motion 0
execute unless block ~ ~ ~0.25 #powers:nonsolid run scale set pehkui:motion 0
execute unless block ~ ~ ~-0.25 #powers:nonsolid run scale set pehkui:motion 0

