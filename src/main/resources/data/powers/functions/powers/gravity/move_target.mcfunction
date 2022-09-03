scoreboard players remove T gravity.distance 1
tp @s ^ ^ ^
execute positioned ^ ^ ^0.1 unless score T gravity.distance matches ..0 run function powers:powers/gravity/move_target
