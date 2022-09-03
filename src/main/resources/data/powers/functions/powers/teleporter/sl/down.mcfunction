
tag @s add self
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link store result score Count num run data get entity @s data.Waypoints
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run function powers:powers/teleporter/sl/down_loop
tag @s remove self
playsound minecraft:ui.button.click master @s
execute unless entity @s[tag=short] run function powers:powers/teleporter/sl/gen_list
execute if entity @s[tag=short] run function powers:powers/teleporter/sl/short_list