

scoreboard players add @s cal5 1
execute if score @s cal5 matches 2.. run kill @s

tag @s add pull
execute as @e[type=!marker,distance=..8,type=!player,tag=!ender_link_pearl] at @s run function powers:powers/telekinesis/pull
tag @s remove pull
