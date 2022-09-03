tag @s add self
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run data modify entity @s data.Waypoints append from entity @s data.Waypoints[0]
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run data remove entity @s data.Waypoints[0]
tag @s remove self
playsound minecraft:ui.button.click master @s
execute unless entity @s[tag=short] run function powers:powers/teleporter/sl/gen_list
execute if entity @s[tag=short] run function powers:powers/teleporter/sl/short_list
