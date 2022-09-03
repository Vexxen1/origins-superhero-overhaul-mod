execute store result score x1 x run data get entity @e[tag=tar,limit=1] Pos[0] 10
execute store result score y1 y run data get entity @e[tag=tar,limit=1] Pos[1] 10
execute store result score z1 z run data get entity @e[tag=tar,limit=1] Pos[2] 10


execute store result score x2 x run data get entity @s Pos[0] 10
execute store result score y2 y run data get entity @s Pos[1] 10
execute store result score z2 z run data get entity @s Pos[2] 10

# subtract
scoreboard players operation x2 x -= x1 x
scoreboard players operation y2 y -= y1 y
scoreboard players operation z2 z -= z1 z

# greater then 10, 10, less then -10, -10
execute if score x2 x matches ..-10 run scoreboard players set x2 x -1000
execute if score x2 x matches 10.. run scoreboard players set x2 x 1000

execute if score y2 y matches ..-10 run scoreboard players set y2 y -1000
execute if score y2 y matches 10.. run scoreboard players set y2 y 1000

execute if score z2 z matches ..-10 run scoreboard players set z2 z -1000
execute if score z2 z matches 10.. run scoreboard players set z2 z 1000


execute store result entity @s Motion[0] double -0.01 run scoreboard players get x2 x
execute store result entity @s Motion[1] double -0.01 run scoreboard players get y2 y
execute store result entity @s Motion[2] double -0.01 run scoreboard players get z2 z