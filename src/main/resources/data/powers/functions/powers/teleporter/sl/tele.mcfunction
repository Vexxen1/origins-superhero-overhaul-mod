

#execute at @e[tag=self] run forceload add ~ ~




execute at @e[tag=self] run summon marker ~ ~ ~ {Tags:["tele"]}
execute at @e[tag=self] run summon marker ~ ~ ~ {Tags:["temp"]}

data modify entity @e[tag=tele,limit=1] Pos set from entity @s data.Waypoints[0].Pos
execute at @e[tag=tele,limit=1] run forceload add ~ ~

data modify entity @e[tag=tele,limit=1] Rotation set from entity @s data.Waypoints[0].Rotation
#execute at @e[tag=tele,limit=1] run setblock ~ ~ ~ diamond_block

execute at @e[tag=tele,limit=1] rotated as @e[tag=tele,limit=1] run tp @e[tag=telepor] ~ ~ ~ ~ ~

execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run tp @s @p

tag @e remove telepor
execute at @e[tag=tele,limit=1] run forceload remove ~ ~
kill @e[tag=tele]
execute at @e[tag=temp,limit=1] run forceload remove ~ ~
kill @e[tag=temp]
