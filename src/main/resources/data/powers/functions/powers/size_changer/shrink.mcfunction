
execute store result score SC num run scale get pehkui:height @s 10000

execute unless score SC num matches ..625 run scale divide pehkui:height 1.025
execute unless score SC num matches ..625 run scale divide pehkui:width 1.025

scale set pehkui:view_bobbing 0


