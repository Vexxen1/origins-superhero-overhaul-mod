execute as @e[tag=selection] at @s run tp @s ~ ~-99999 ~
execute as @e[tag=selection] at @s run tag @s remove selection
kill @e[tag=sel]
kill @e[tag=side]
summon marker ~ ~ ~ {Tags:["side"]}
summon marker ~ ~ ~ {Tags:["sel"]}
execute as @e[tag=sel] at @s store result score @s x run data get entity @s Pos[0]
execute as @e[tag=sel] at @s store result score @s y run data get entity @s Pos[1]
execute as @e[tag=sel] at @s store result score @s z run data get entity @s Pos[2]

execute as @e[tag=sel] at @s run scoreboard players operation @s x /= 5 num
execute as @e[tag=sel] at @s run scoreboard players operation @s y /= 5 num
execute as @e[tag=sel] at @s run scoreboard players operation @s z /= 5 num

execute as @e[tag=sel] at @s run scoreboard players operation @s x *= 5 num
execute as @e[tag=sel] at @s run scoreboard players operation @s y *= 5 num
execute as @e[tag=sel] at @s run scoreboard players operation @s z *= 5 num

execute as @e[tag=sel] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s x
execute as @e[tag=sel] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s y
execute as @e[tag=sel] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s z

tag @p add self

execute as @e[tag=sel] at @s run tp @s ~2.5 ~ ~2.5
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~ ~ ~-2.5 0.8 0 0 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~ ~ ~2.5 0.8 0 0 1 10 normal @a[tag=self]

execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~-2.5 ~ ~ 0 0 0.8 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~2.5 ~ ~ 0 0 0.8 1 10 normal @a[tag=self]

execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~ ~5 ~-2.5 0.8 0 0 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~ ~5 ~2.5 0.8 0 0 1 10 normal @a[tag=self]

execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~-2.5 ~5 ~ 0 0 0.8 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~2.5 ~5 ~ 0 0 0.8 1 10 normal @a[tag=self]

execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~2.5 ~2.5 ~2.5 0 0.8 0 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~2.5 ~2.5 ~-2.5 0 0.8 0 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~-2.5 ~2.5 ~-2.5 0 0.8 0 1 10 normal @a[tag=self]
execute as @e[tag=sel] at @s run particle minecraft:dust 0 1 0 0.5 ~-2.5 ~2.5 ~2.5 0 0.8 0 1 10 normal @a[tag=self]

tag @p remove self