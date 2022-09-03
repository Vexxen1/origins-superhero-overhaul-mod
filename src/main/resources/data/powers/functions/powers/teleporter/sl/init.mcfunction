execute as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run kill @s
summon marker ~ ~ ~ {Tags:["waypoint_storage"],data:{Waypoints:[{new:1,Name:'{"text":"Create New Waypoint","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}]}}
# {Pos:[0d,0d,0d],Rotation:[0f,0f]}
tag @s add has_waypoint_marker
scoreboard players add G waypoint_link 1
scoreboard players operation @s waypoint_link = G waypoint_link
scoreboard players operation @e[tag=waypoint_storage,tag=!summoned] waypoint_link = G waypoint_link
tag @e[tag=waypoint_storage,tag=!summoned] add summoned
