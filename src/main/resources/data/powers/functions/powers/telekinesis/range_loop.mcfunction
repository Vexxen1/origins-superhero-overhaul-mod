

execute as @e[dx=0,tag=!self,tag=!range_finder] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @e[tag=range_finder] add hit
scoreboard players remove R cal5 1

execute unless score R cal5 matches ..0 positioned ^ ^ ^0.5 if block ^ ^ ^ #powers:nonsolid unless entity @s[tag=hit] run function powers:powers/telekinesis/range_loop
