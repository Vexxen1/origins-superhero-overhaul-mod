data modify entity @s CustomName set from entity @s data.Waypoints[0].Name

execute store result score WP.x num run data get entity @s data.Waypoints[0].Pos[0]
execute store result score WP.y num run data get entity @s data.Waypoints[0].Pos[1]
execute store result score WP.z num run data get entity @s data.Waypoints[0].Pos[2]
tag @s add this


execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @p waypoint_link run data modify entity @s data.dim set from entity @s data.Waypoints[0].Dimension


execute if data entity @s {data: {dim:1}} if data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s {"text":"[New]","color":"gold"}
execute if data entity @s {data: {dim:1}} unless data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s [{"selector":"@e[tag=this,limit=1]","color":"green"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"WP.y","objective":"num"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"WP.z","objective":"num"},"color":"green"}]

execute if data entity @s {data: {dim:1}} if data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"text":"[New]","color":"gold"},{"text":" - ","color":"gold","bold":true}]
execute if data entity @s {data: {dim:1}} unless data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"selector":"@e[tag=this,limit=1]","color":"green"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"WP.y","objective":"num"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"WP.z","objective":"num"},"color":"green"},{"text":" - ","color":"gold","bold":true}]


execute if data entity @s {data: {dim:2}} if data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s {"text":"[New]","color":"gold"}
execute if data entity @s {data: {dim:2}} unless data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s [{"selector":"@e[tag=this,limit=1]","color":"red"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"WP.y","objective":"num"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"WP.z","objective":"num"},"color":"red"}]

execute if data entity @s {data: {dim:2}} if data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"text":"[New]","color":"gold"},{"text":" - ","color":"gold","bold":true}]
execute if data entity @s {data: {dim:2}} unless data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"selector":"@e[tag=this,limit=1]","color":"red"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"WP.y","objective":"num"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"WP.z","objective":"num"},"color":"red"},{"text":" - ","color":"gold","bold":true}]


execute if data entity @s {data: {dim:3}} if data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s {"text":"[New]","color":"gold"}
execute if data entity @s {data: {dim:3}} unless data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s [{"selector":"@e[tag=this,limit=1]","color":"#D1C894"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"#D1C894"},{"text":", ","color":"#D1C894"},{"score":{"name":"WP.y","objective":"num"},"color":"#D1C894"},{"text":", ","color":"#D1C894"},{"score":{"name":"WP.z","objective":"num"},"color":"#D1C894"}]

execute if data entity @s {data: {dim:3}} if data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"text":"[New]","color":"gold"},{"text":" - ","color":"gold","bold":true}]
execute if data entity @s {data: {dim:3}} unless data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"selector":"@e[tag=this,limit=1]","color":"#D1C894"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"#D1C894"},{"text":", ","color":"#D1C894"},{"score":{"name":"WP.y","objective":"num"},"color":"#D1C894"},{"text":", ","color":"#D1C894"},{"score":{"name":"WP.z","objective":"num"},"color":"#D1C894"},{"text":" - ","color":"gold","bold":true}]

execute if data entity @s {data: {dim:0}} if data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s {"text":"[New]","color":"gold"}
execute if data entity @s {data: {dim:0}} unless data entity @s data.Waypoints[0].new as @e[tag=self] unless entity @s[tag=selected] run tellraw @s [{"selector":"@e[tag=this,limit=1]","color":"light_purple"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"WP.y","objective":"num"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"WP.z","objective":"num"},"color":"light_purple"}]

execute if data entity @s {data: {dim:0}} if data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"text":"[New]","color":"gold"},{"text":" - ","color":"gold","bold":true}]
execute if data entity @s {data: {dim:0}} unless data entity @s data.Waypoints[0].new as @e[tag=self] if entity @s[tag=selected] run tellraw @s [{"text":" - ","color":"gold","bold":true},{"selector":"@e[tag=this,limit=1]","color":"light_purple"},{"text":", Pos: ","color":"gold"},{"score":{"name":"WP.x","objective":"num"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"WP.y","objective":"num"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"WP.z","objective":"num"},"color":"light_purple"},{"text":" - ","color":"gold","bold":true}]


tag @s remove this
tag @p remove selected
