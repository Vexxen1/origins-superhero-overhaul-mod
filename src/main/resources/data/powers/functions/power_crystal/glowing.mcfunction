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

# glowing
scoreboard players add @s pc.t 1
execute if score @s pc.t matches 1200.. if score @s powerstored matches 1.. run scoreboard players remove @s powerstored 1
execute if score @s pc.t matches 1200.. if score @s powerstored matches 1.. run scoreboard players set @s pc.t 0
execute if score @s powerstored matches 0 run scoreboard players set @s pc.t 0

execute if score @s powerstored matches 1.. run effect give @e[distance=..50] minecraft:glowing 1 0 true
execute if score @s powerstored matches 1.. run particle minecraft:glow ~ ~1.2 ~ 0 0 0 0.25 1
