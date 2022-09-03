execute store result score H damage run data get entity @s Health
scoreboard players operation H damage -= @s damage
scoreboard players set @s damage 0
execute store result entity @s Health float 1 run scoreboard players get H damage
execute as @s at @s anchored eyes positioned ^ ^ ^ positioned ~ ~1 ~ run summon minecraft:snowball ~ ~ ~ {Motion:[0.0,-1.0,0.0],Tags:["damage"],Item:{id:"minecraft:stone",Count:1b},ActiveEffects:[{Id:14,Amplifier:1b,Duration:19980,ShowParticles:0b}]}
execute as @e[tag=dam,limit=1,sort=nearest] at @s at @a if score @p player_id = @s player_id_con as @p store result score T uuid run data modify entity @e[tag=damage,limit=1] Owner set from entity @s UUID
tag @s add nodam

