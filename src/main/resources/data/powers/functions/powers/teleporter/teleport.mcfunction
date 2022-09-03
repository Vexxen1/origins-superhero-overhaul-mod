execute at @s run particle minecraft:flash ~ ~1 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
execute at @s run tag @e[distance=..1] add telep
particle minecraft:flash ~ ~1 ~
tp @e[tag=telep] ~ ~ ~
tag @e remove telep
effect give @s minecraft:slow_falling 1 0
tag @s add teleported
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~