summon tnt ~ ~ ~ {Fuse:2}

scoreboard players add At num 1

execute at @s run tag @e[distance=..5,tag=!notp] add telepor

tp @s 0 500 0
spreadplayers 0 0 29999984 29999984 false @s
forceload add ~ ~
tag @s remove ok
execute if entity @s[tag=nether] at @s positioned ~ ~-1 ~ run function powers:powers/teleporter/nether_tp
execute unless entity @s[tag=nether] at @s run tag @s add ok


forceload remove ~ ~
execute at @s unless entity @s[tag=ok] unless score At num matches 20.. run function powers:powers/teleporter/random_tp
tag @s remove nether
tag @s remove ok

scoreboard players set At num 0
tp @e[tag=telepor] @s
