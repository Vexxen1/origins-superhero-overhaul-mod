tag @s add self


execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link unless data entity @s data.Waypoints[0].new run function powers:powers/teleporter/sl/tele

execute at @s run particle minecraft:flash ~ ~1 ~
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~

tag @s remove self

playsound minecraft:ui.button.click master @s

execute unless entity @s[tag=short] run function powers:powers/teleporter/sl/gen_list
execute if entity @s[tag=short] run function powers:powers/teleporter/sl/short_list

effect give @s minecraft:slow_falling 1 0
tag @s add teleported

execute as @e[tag=fl] at @s run function powers:powers/teleporter/sl/r

tag @s remove tp2
