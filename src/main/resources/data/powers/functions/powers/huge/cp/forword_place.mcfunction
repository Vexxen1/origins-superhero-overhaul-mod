
scoreboard players remove F num 1
particle minecraft:dust 0 0 1 1
function powers:powers/huge/cp/load
execute positioned ~-1 ~ ~ unless score F num matches ..0 run function powers:powers/huge/cp/forword_place
