tag @s add self
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run data remove entity @s data.Waypoints[0]
tag @s remove self
playsound minecraft:ui.button.click master @s
function powers:powers/teleporter/sl/gen_list