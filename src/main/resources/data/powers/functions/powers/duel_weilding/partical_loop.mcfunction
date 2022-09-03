execute if score Dam num matches 1.. run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.1 1 normal
scoreboard players remove Dam num 1
execute if score Dam num matches 1.. run function powers:powers/duel_weilding/partical_loop
