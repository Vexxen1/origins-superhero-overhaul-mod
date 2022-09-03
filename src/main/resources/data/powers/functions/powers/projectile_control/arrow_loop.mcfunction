# initiate arrow following function's, loops every tick
## particles
execute at @s run particle minecraft:dust 0 0.349 1 1 ~ ~ ~ 0 0 0 0 1

## add tags
tag @s add as
tag @e[distance=..0.01,limit=1,sort=nearest] add at

## Give has_arrow tag
tag @e[tag=at] add has_arrow
tag @s add targeting
execute if score @e[tag=as,limit=1] in_ground matches 1 run tag @e[tag=at] remove has_arrow
tag @s add aim_arrow
## run correct function for entity following arrows, and block following arrows

execute unless entity @e[tag=at,type=marker] run tag @s add entity_arrow

execute if entity @s[tag=entity_arrow] run function powers:powers/projectile_control/entity_following_arrow_loop
execute if entity @s[tag=!entity_arrow] run function powers:powers/projectile_control/block_following_arrow_loop
tag @s remove entity_arrow