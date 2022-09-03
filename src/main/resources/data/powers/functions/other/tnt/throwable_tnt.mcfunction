scale delay set pehkui:height 0
scale delay set pehkui:width 0
scale set pehkui:height 0.5
scale set pehkui:width 0.5

execute if block ~ ~-0.01 ~ #powers:nonsolid run data modify entity @s NoGravity set value 0b
execute unless block ~ ~-0.01 ~ #powers:nonsolid run data modify entity @s NoGravity set value 1b
