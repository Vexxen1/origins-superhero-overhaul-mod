tag @s add self

execute at @s run forceload add ~ ~

execute at @s run summon marker ~ ~ ~ {Tags:["fl"]}

execute at @s run particle minecraft:flash ~ ~1 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
execute at @s run tag @e[distance=..1] add telepor

execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run data modify entity @s data.dim set from entity @s data.Waypoints[0].Dimension

tag @a remove crossdim
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:1}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:overworld"} in overworld positioned 0 0 0 run tag @e[tag=self] add crossdim
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:2}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_nether"} in the_nether positioned 0 0 0 run tag @e[tag=self] add crossdim
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:3}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_end"} in the_end positioned 0 0 0 run tag @e[tag=self] add crossdim

execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:1}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:overworld"} in overworld positioned 0 0 0 run tp @e[tag=self] 0 400 0
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:2}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_nether"} in the_nether positioned 0 0 0 run tp @e[tag=self] 0 400 0
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s {data: {dim:3}} unless data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_end"} in the_end positioned 0 0 0 run tp @e[tag=self] 0 400 0

execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run tp @s @p

execute if entity @s[tag=crossdim] run tag @s add tp2

execute if entity @s[tag=!crossdim] run function powers:powers/teleporter/sl/tp2
execute if entity @s[tag=crossdim] run schedule function powers:powers/teleporter/sl/t 20t
