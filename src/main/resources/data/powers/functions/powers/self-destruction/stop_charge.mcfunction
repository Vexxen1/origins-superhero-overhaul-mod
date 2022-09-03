effect clear @s minecraft:glowing
execute if score @s sd.charge matches 1..254 at @s rotated as @s run function powers:powers/self-destruction/exsplode
scoreboard players set @s sd.charge 0
scoreboard players set @s sd.radius 0
scoreboard players set @s sd.t 0

execute if score @s sd.charge matches ..127 run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"green"}
execute if score @s sd.charge matches 127..190 run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"yellow"}
execute if score @s sd.charge matches 190.. run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"red"}

execute if score @s sd.charge matches 190.. run bossbar set minecraft:sd.charge color red
execute if score @s sd.charge matches 127..190 run bossbar set minecraft:sd.charge color yellow
execute if score @s sd.charge matches ..127 run bossbar set minecraft:sd.charge color green

execute store result bossbar minecraft:sd.charge value run scoreboard players get @s sd.charge
