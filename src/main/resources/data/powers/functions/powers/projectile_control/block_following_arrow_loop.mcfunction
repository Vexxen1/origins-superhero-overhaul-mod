data merge entity @s {NoGravity:1b}
# loops every tick for a arrow following a block
## summon marker too move twords, and display debug particals
kill @e[tag=pos]
execute at @s as @e[tag=at] if entity @s facing entity @s eyes run particle minecraft:dust 1 0 0 1 ^ ^ ^5 0 0 0 1 1 normal @a[tag=debug]

execute at @s as @e[tag=at] if entity @s facing entity @s eyes run summon marker ^ ^ ^10 {Tags:["pos"]}

## get distance between arrow and marker
execute as @s at @e[tag=pos] run function powers:useful/distance

## initiate variables

scoreboard players set x1 x 0
scoreboard players set y1 y 0
scoreboard players set z1 z 0
## get current motion
execute store result score x1 x run data get entity @s Motion[0] 10
execute store result score y1 y run data get entity @s Motion[1] 10
execute store result score z1 z run data get entity @s Motion[2] 10

## calculate new motion

scoreboard players operation xd x -= x1 x
scoreboard players operation yd y -= y1 y
scoreboard players operation zd z -= z1 z

scoreboard players operation xd x /= 3 num
scoreboard players operation yd y /= 3 num
scoreboard players operation zd z /= 3 num

#scoreboard players operation yd y -= 2 num

scoreboard players operation x1 x += xd x
scoreboard players operation y1 y += yd y
scoreboard players operation z1 z += zd z

## store motion
execute store result entity @s Motion[0] double 0.05 run scoreboard players get x1 x
execute store result entity @s Motion[1] double 0.05 run scoreboard players get y1 y
execute store result entity @s Motion[2] double 0.05 run scoreboard players get z1 z

## end
kill @e[tag=pos]
tag @e[tag=as,limit=1] remove as
tag @e[tag=at,limit=1] remove at
