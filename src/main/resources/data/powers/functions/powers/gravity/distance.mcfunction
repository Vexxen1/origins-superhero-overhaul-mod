execute store result score x1 x run data get entity @s Pos[0] 0.1
execute store result score y1 y run data get entity @s Pos[1] 0.1
execute store result score z1 z run data get entity @s Pos[2] 0.1

execute store result score x2 x run data get entity @p Pos[0] 0.1
execute store result score y2 y run data get entity @p Pos[1] 0.1
execute store result score z2 z run data get entity @p Pos[2] 0.1

# subtract
scoreboard players operation x2 x -= x1 x
scoreboard players operation y2 y -= y1 y
scoreboard players operation z2 z -= z1 z

# square
scoreboard players operation x2 x *= x2 x
scoreboard players operation y2 y *= y2 y
scoreboard players operation z2 z *= z2 z

# add
scoreboard players operation x2 x += y2 y
scoreboard players operation x2 x += z2 z

# sqrt
scoreboard players operation in nnmath_sqrt = x2 x
function nnmath:sqrt/exe
scoreboard players operation @p gravity.distance = out nnmath_sqrt
