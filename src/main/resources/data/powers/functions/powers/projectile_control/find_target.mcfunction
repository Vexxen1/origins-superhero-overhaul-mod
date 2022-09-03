# this will run all the time, find a arrow that a aim player shot, make it aim twards a block or entity, and run loop functions for the arrow
## give debug particals too aim targets, and linked targets
execute as @e[tag=aim_target] at @s run particle minecraft:dust 0.267 1 0 1 ~ ~ ~ 0 0 0 1 10 normal @a[tag=debug]
execute as @e[tag=linkedT] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 1 1 normal @a[tag=debug]

## store uuid for player, and owner uuids for arrows, then set aim target uuid scores too match the player they are aiming for
execute store result score @s uuid run data get entity @s UUID[0]
execute as @e[type=#powers:arrows] store result score @s uuid run data get entity @s Owner[0]
execute at @s as @e[tag=aim_target] if score @s player_id_con = @p player_id run scoreboard players operation @s uuid = @p uuid

## link arrows too aim targets, arrows need too match uuid scores with link targets, and not be in the ground, unless the arrow is alrady linked
### stores wether they are in the ground into a scoreboard
execute as @e[type=#powers:arrows] store result score @s in_ground run data get entity @s inGround

### at the target, as the arrow, link
execute as @e[type=#powers:arrows,tag=!linked] unless score @s in_ground matches 1 at @e[tag=aim_target] if score @s uuid = @e[distance=..0.01,limit=1,sort=nearest] uuid run function powers:powers/projectile_control/link

## run commands at link targets and as there arrows
tag @e remove has_arrow
execute at @e[tag=linkedT] as @e[type=#powers:arrows,tag=linked] if score @s arrow_link = @e[distance=..0.01,limit=1,sort=nearest] arrow_link run function powers:powers/projectile_control/arrow_loop

## kill or remove linked targets if no longer has arrow, or arrow in ground
tag @e[tag=linkedT,tag=!has_arrow,type=!marker] remove linkedT
kill @e[tag=linkedT,tag=!has_arrow,type=marker]
