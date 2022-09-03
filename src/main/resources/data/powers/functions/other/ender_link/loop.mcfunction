
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute align xyz positioned ~0.5 ~0.75 ~0.5 unless entity @e[tag=ender_link_pearl,distance=..0.2] run summon snowball ~ ~ ~ {NoGravity:1b,Tags:["ender_link_pearl"],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}

# break
execute unless block ~ ~ ~ sculk_sensor align xyz positioned ~0.5 ~0.75 ~0.5 run kill @e[tag=ender_link_pearl,distance=..0.2]
execute unless block ~ ~ ~ sculk_sensor align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,distance=..0.5]
execute unless block ~ ~ ~ sculk_sensor align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=experience_orb,distance=..0.5]
execute unless block ~ ~ ~ sculk_sensor run summon item ~ ~ ~ {Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'{"text":"Ender Link","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ender_link:1,Enchantments:[{}]}}}
execute unless block ~ ~ ~ sculk_sensor run kill @s

# active
execute if entity @s[tag=active,tag=!is_active] run playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~
execute if entity @s[tag=active,tag=!is_active] run tag @s add is_active
execute unless entity @s[tag=active] run tag @s remove is_active


execute if block ~ ~ ~ sculk_sensor unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[power=0,sculk_sensor_phase=cooldown]
execute if block ~ ~ ~ sculk_sensor if entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[power=15,sculk_sensor_phase=active]

# send
tag @s add self

## repeater
execute if block ~1 ~ ~ minecraft:repeater[facing=east,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:repeater[facing=west,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:repeater[facing=south,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:repeater[facing=north,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:repeater[facing=east,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:repeater[facing=west,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:repeater[facing=south,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:repeater[facing=north,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## comparator
execute if block ~1 ~ ~ minecraft:comparator[facing=east,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:comparator[facing=west,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:comparator[facing=south,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:comparator[facing=north,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:comparator[facing=east,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:comparator[facing=west,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:comparator[facing=south,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:comparator[facing=north,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## observer
execute if block ~1 ~ ~ minecraft:observer[facing=east,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:observer[facing=west,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:observer[facing=south,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:observer[facing=north,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~-1 ~ minecraft:observer[facing=down,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~1 ~ minecraft:observer[facing=up,powered=true] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:observer[facing=east,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:observer[facing=west,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:observer[facing=south,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:observer[facing=north,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~-1 ~ minecraft:observer[facing=down,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~1 ~ minecraft:observer[facing=up,powered=true] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side] run function powers:other/ender_link/redstone_cheak
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side] run function powers:other/ender_link/redstone_cheak
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side] run function powers:other/ender_link/redstone_cheak
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side] run function powers:other/ender_link/redstone_cheak

tag @s remove active

tag @s remove self