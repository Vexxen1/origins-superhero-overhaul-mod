
## redstone 1
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=1] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=1] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=1] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=1] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=1] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=1] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=1] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=1] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 2
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=2] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=2] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=2] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=2] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=2] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=2] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=2] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=2] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 3
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=3] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=3] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=3] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=3] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=3] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=3] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=3] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=3] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 4
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=4] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=4] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=4] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=4] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=4] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=4] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=4] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=4] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 5
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=5] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=5] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=5] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=5] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=5] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=5] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=5] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=5] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 6
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=6] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=6] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=6] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=6] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=6] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=6] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=6] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=6] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 7
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=7] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=7] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=7] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=7] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=7] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=7] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=7] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=7] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 8
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=8] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=8] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=8] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=8] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=8] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=8] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=8] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=8] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 9
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=9] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=9] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=9] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=9] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=9] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=9] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=9] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=9] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 10
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=10] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=10] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=10] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=10] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=10] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=10] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=10] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=10] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 11
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=11] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=11] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=11] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=11] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=11] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=11] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=11] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=11] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 12
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=12] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=12] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=12] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=12] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=12] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=12] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=12] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=12] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 13
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=13] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=13] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=13] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=13] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=13] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=13] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=13] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=13] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 14
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=14] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=14] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=14] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=14] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=14] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=14] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=14] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=14] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]

## redstone 15
execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=15] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=15] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=15] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=15] as @e[tag=ender_link,tag=!self] if score @s ender_link_id_in = @e[tag=self,limit=1] ender_link_id_out run tag @s add active

execute if block ~1 ~ ~ minecraft:redstone_wire[east=side,power=15] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~-1 ~ ~ minecraft:redstone_wire[west=side,power=15] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~1 minecraft:redstone_wire[south=side,power=15] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
execute if block ~ ~ ~-1 minecraft:redstone_wire[north=side,power=15] unless entity @s[tag=active] run setblock ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active]
