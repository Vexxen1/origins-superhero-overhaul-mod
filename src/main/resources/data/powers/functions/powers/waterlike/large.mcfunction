execute store result score SC num run scale get pehkui:height @s 100

execute unless score SC num matches 100.. run scale divide pehkui:height 0.975
execute unless score SC num matches 100.. run scale divide pehkui:width 0.975
execute unless score SC num matches 100.. run scale divide pehkui:held_item 1.025

execute if score SC num matches 100.. run scale set pehkui:height 1
execute if score SC num matches 100.. run scale set pehkui:width 1
execute if score SC num matches 100.. run scale set pehkui:held_item 1
