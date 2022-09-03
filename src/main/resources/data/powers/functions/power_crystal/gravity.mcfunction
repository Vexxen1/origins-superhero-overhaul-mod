# asorbsion

execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] run data merge entity @s {PickupDelay:32767}
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] run tag @s add useing

execute at @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] run function powers:power_crystal/beampar
execute at @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:witch ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] run scoreboard players add @s powerstored 1
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 1 run playsound minecraft:entity.guardian.attack block @a ~ ~ ~
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 40 run playsound minecraft:entity.guardian.attack block @a ~ ~ ~
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 64.. at @s run particle minecraft:flash
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 64.. run stopsound @a block minecraft:entity.guardian.attack
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 64.. at @s run playsound minecraft:block.glass.break block @a ~ ~ ~
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 64.. run execute store result score A powerstored run data get entity @s Item.Count
execute as @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:blaze_powder"}}] if score @s powerstored matches 64.. run kill @s
execute as @e[type=minecraft:item,distance=8..9,tag=useing] run scoreboard players set @s powerstored 0
execute as @e[type=minecraft:item,distance=8..9,tag=useing] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,distance=8..9,tag=useing] run tag @s remove useing


scoreboard players operation @s powerstored += A powerstored
scoreboard players set A powerstored 0

# wave
execute if score @s powerstored matches 64.. run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.161 0.098 1.000 1",Radius:0.1f,RadiusPerTick:0.4f,RadiusOnUse:0f,Duration:22,DurationOnUse:0f}
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] if data entity @s NoGravity run tag @s add grav
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] if data entity @s NoGravity run power revoke @s powers:powers/gravity/glowing
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] if data entity @s NoGravity run data remove entity @s NoGravity
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8,tag=!grav] unless data entity @s NoGravity run power grant @s powers:powers/gravity/glowing
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8,tag=!grav] unless data entity @s NoGravity run data modify entity @s NoGravity set value 1b
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] run tag @s remove grav
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] run playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 4 2
execute if score @s powerstored matches 64.. run execute as @e[distance=0.01..8] at @s run particle minecraft:portal ~ ~ ~ 0.25 0.25 0.25 0 100
execute if score @s powerstored matches 64.. run scoreboard players remove @s powerstored 64
