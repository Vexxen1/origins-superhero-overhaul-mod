scoreboard players set L num 5
function powers:powers/huge/cp/left_store
scoreboard players remove U num 1
execute positioned ~ ~-1 ~ unless score U num matches ..0 run function powers:powers/huge/cp/up_store
