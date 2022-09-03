# grab and move mob
## grab mob
tag @s add self
execute as @s at @s anchored eyes run function powers:powers/gravity/grab_loop

## get distance from player
execute if entity @s[tag=!distance_got] at @s as @e[tag=grab] if score @s player_id_con = @p player_id run function powers:powers/gravity/distance
tag @s add distance_got

## summon target
execute unless entity @e[tag=target] run summon marker ~ ~ ~ {Tags:["target"]}

## link target
scoreboard players operation @e[tag=target,tag=!summoned] player_id = @s player_id

## move target
scoreboard players operation T gravity.distance = @s gravity.distance
execute as @e[tag=target] if score @s player_id = @p player_id at @s run tag @s add guy
execute at @s facing ^ ^ ^1 anchored eyes positioned ^ ^ ^10 run tp @e[tag=guy] ~ ~ ~ ~ ~
execute as @e[tag=target] if score @s player_id = @p player_id at @s run tag @s remove guy

## tp mob too motion equal
execute as @e[tag=target] if score @s player_id = @p player_id at @s run tag @s add tar
execute as @e[tag=grab] if score @s player_id_con = @p player_id at @s run function powers:powers/gravity/move_mob
execute as @e[tag=target] if score @s player_id = @p player_id at @s run tag @s remove tar

## letgo
scoreboard players set @s gravity.letgo 3

tag @s remove self
