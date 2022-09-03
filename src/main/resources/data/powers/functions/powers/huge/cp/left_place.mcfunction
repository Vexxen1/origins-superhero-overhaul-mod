scoreboard players set F num 5
function powers:powers/huge/cp/forword_place

scoreboard players remove L num 1
execute positioned ~ ~ ~-1 unless score L num matches ..0 run function powers:powers/huge/cp/left_place
