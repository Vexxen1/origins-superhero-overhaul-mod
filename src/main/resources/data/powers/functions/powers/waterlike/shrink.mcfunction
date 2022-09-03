execute store result score SC num run scale get pehkui:height @s 100

execute unless score SC num matches ..1 run scale divide pehkui:height 1.025
execute unless score SC num matches ..1 run scale divide pehkui:width 1.025
execute unless score SC num matches ..1 run scale divide pehkui:held_item 0.975
execute if score SC num matches ..1 run kill @s
execute if score SC num matches ..1 run scale reset @s
