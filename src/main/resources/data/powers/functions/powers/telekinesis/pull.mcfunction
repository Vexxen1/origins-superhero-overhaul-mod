tag @s add as

kill @e[tag=pos]

execute at @e[tag=as] as @e[tag=pull] facing entity @s eyes run summon marker ^ ^ ^10 {Tags:["pos"]}

execute as @e[tag=as] as @s at @e[tag=pos] run function powers:useful/distance

scoreboard players set x1 x 0
scoreboard players set y1 y 0
scoreboard players set z1 z 0
## get current motion
execute as @e[tag=as] store result score x1 x run data get entity @s Motion[0] 10
execute as @e[tag=as] store result score y1 y run data get entity @s Motion[1] 10
execute as @e[tag=as] store result score z1 z run data get entity @s Motion[2] 10

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
execute as @e[tag=as] store result entity @s Motion[0] double 0.025 run scoreboard players get x1 x
execute as @e[tag=as] store result entity @s Motion[1] double 0.025 run scoreboard players get y1 y
execute as @e[tag=as] store result entity @s Motion[2] double 0.025 run scoreboard players get z1 z

kill @e[tag=pos]
tag @e[tag=as] remove as
tag @e[tag=at] remove at
