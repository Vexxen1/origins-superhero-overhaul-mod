# distance between as and at

# imput: as, at

# output:
# xd x - valued x distance, 10 = 0.1
# yd y - valued y distance, 10 = 0.1
# zd z - valued z distance, 10 = 0.1
# xd+ x - x distance, 10 = 0.1
# yd+ y - y distance, 10 = 0.1
# zd+ z - z distance, 10 = 0.1
# d x - distance, 10 = 0.1

## add tag

scoreboard players set x1 x 0
scoreboard players set y1 y 0
scoreboard players set z1 z 0
scoreboard players set xd x 0
scoreboard players set yd y 0
scoreboard players set zd z 0
scoreboard players set xd+ x 0
scoreboard players set yd+ y 0
scoreboard players set zd+ z 0
scoreboard players set d x 0

## get values
execute at @e[tag=as,limit=1] store result score x1 x run data get entity @e[tag=as,limit=1] Pos[0] 10
execute at @e[tag=as,limit=1] store result score y1 y run data get entity @e[tag=as,limit=1] Pos[1] 10
execute at @e[tag=as,limit=1] store result score z1 z run data get entity @e[tag=as,limit=1] Pos[2] 10

execute at @e[tag=pos,limit=1] store result score x2 x run data get entity @e[tag=pos,limit=1] Pos[0] 10
execute at @e[tag=pos,limit=1] store result score y2 y run data get entity @e[tag=pos,limit=1] Pos[1] 10
execute at @e[tag=pos,limit=1] store result score z2 z run data get entity @e[tag=pos,limit=1] Pos[2] 10

execute if entity @s[tag=as,tag=entity_arrow] run scoreboard players add y2 y 10

## subtract
scoreboard players operation x2 x -= x1 x

scoreboard players operation y2 y -= y1 y

scoreboard players operation z2 z -= z1 z

## store
scoreboard players operation xd x = x2 x
scoreboard players operation yd y = y2 y
scoreboard players operation zd z = z2 z

scoreboard players operation xd+ x = xd x
scoreboard players operation yd+ y = yd y
scoreboard players operation zd+ z = zd z
execute if score xd+ x matches ..0 run scoreboard players operation xd+ x *= -1 num
execute if score yd+ y matches ..0 run scoreboard players operation yd+ y *= -1 num
execute if score zd+ z matches ..0 run scoreboard players operation zd+ z *= -1 num

## square
scoreboard players operation x2 x *= x2 x
scoreboard players operation y2 y *= y2 y
scoreboard players operation z2 z *= z2 z

## add
scoreboard players operation x2 x += y2 y
scoreboard players operation x2 x += z2 z

## sqrt
scoreboard players operation in nnmath_sqrt = x2 x
function nnmath:sqrt/exe
scoreboard players operation d x = out nnmath_sqrt

## remove tag
