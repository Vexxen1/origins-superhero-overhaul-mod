tellraw @s {"text":"\n\n\n\n\n\n"}
tag @s add self
tellraw @s {"text":"_____[ Waypoints ]_____","color":"gold","bold":true}

tag @s add selected
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run function powers:powers/teleporter/sl/text



execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link store result score Count num run data get entity @s data.Waypoints
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run function powers:powers/teleporter/sl/list_loop
tellraw @s {"text":"_______________________","color":"gold","bold":true}
tag @s remove self
