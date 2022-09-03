tellraw @s {"text":"\n\n\n\n\n\n"}
tag @s add self
tellraw @s {"text":"_____[ Waypoints ]_____","color":"gold","bold":true}

tellraw @s {"text":""}
tellraw @s [{"text":"   "},{"text":"[up]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/up"}},{"text":"                  "},{"text":"[down]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/down"}}]

tellraw @s {"text":""}
tag @s remove new
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link if data entity @s data.Waypoints[0].new run tag @p add new

execute if entity @s[tag=new] run tellraw @s [{"text":""},{"text":"[teleport]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport too Selected Waypoint","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/teleport"}},{"text":"     \n"},{"text":"[make new waypoint]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Make new waypoint","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/new"}}]

execute unless entity @s[tag=new] run tellraw @s [{"text":""},{"text":"[teleport]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport too Selected Waypoint","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/teleport"}},{"text":"    \n"},{"text":"[overite waypoint]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Overitde Selected Waypoints location","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/new"}}]

tellraw @s [{"text":""},{"text":"[remove]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Remove Selected Waypoint","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/delete"}},{"text":"     \n"},{"text":"[rename]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Rename waypoint too your selected item's name","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]},"clickEvent":{"action":"run_command","value":"/function powers:powers/teleporter/sl/rename"}}]

tellraw @s {"text":""}
tag @s add selected
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run function powers:powers/teleporter/sl/text



execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link store result score Count num run data get entity @s data.Waypoints
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run function powers:powers/teleporter/sl/list_loop
tellraw @s {"text":"_______________________","color":"gold","bold":true}
tag @s remove self
