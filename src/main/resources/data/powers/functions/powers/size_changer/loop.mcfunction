execute store result score SC num run scale get pehkui:height @s 100




execute if score SC num matches 25..50 run effect give @s minecraft:strength 1 0 true
execute if score SC num matches ..25 run effect give @s minecraft:strength 1 1 true

execute if score SC num matches ..25 run effect give @s minecraft:slow_falling 1 0 true

execute if score SC num matches 250..375 run effect give @s minecraft:strength 1 0 true
execute if score SC num matches 375..500 run effect give @s minecraft:strength 1 1 true

execute if score SC num matches ..250 run scale set pehkui:motion 1
execute if score SC num matches 250..375 run scale set pehkui:motion 1.5
execute if score SC num matches 375..500 run scale set pehkui:motion 5

execute if score SC num matches ..250 run scale set pehkui:reach 1
execute if score SC num matches 250..375 run scale set pehkui:reach 1.5
execute if score SC num matches 375..500 run scale set pehkui:reach 5


execute store result score N num run scale get pehkui:height @s 10000

# 10009 = 1.0009
scoreboard players operation N. num = N num
scoreboard players operation N. num %= 10000 num

scoreboard players operation N num /= 10000 num
title @s actionbar ["",{"text":"Size: ","bold":true,"color":"gold"},{"score":{"name":"N","objective":"num"},"bold":true,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"N.","objective":"num"},"bold":true,"color":"gold"}]

