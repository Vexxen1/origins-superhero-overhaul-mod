# overite selected waypoint, or make a new waypoint
tag @s add self
execute at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run data modify entity @s data.Waypoints[0].Pos set from entity @e[tag=self,limit=1] Pos
execute at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run data modify entity @s data.Waypoints[0].Rotation set from entity @e[tag=self,limit=1] Rotation
execute at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:overworld"} run data modify entity @s data.Waypoints[0].Dimension set value 1
execute at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_nether"} run data modify entity @s data.Waypoints[0].Dimension set value 2
execute at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link unless data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_end"} run data modify entity @s data.Waypoints[0].Dimension set value 3

execute unless entity @s[tag=used_save] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run data modify entity @s data.T set value {Pos: [0d,0d,0d],Rotation:[0f,0f],Dimension:0,Name:'{"text":"New Waypoint","color":"reset"}'}
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run data modify entity @s data.T.Pos set from entity @e[tag=self,limit=1] Pos
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run data modify entity @s data.T.Rotation set from entity @e[tag=self,limit=1] Rotation
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:overworld"} run data modify entity @s data.T.Dimension set value 1
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_nether"} run data modify entity @s data.T.Dimension set value 2
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run execute if data entity @e[tag=self,limit=1] {Dimension: "minecraft:the_end"} run data modify entity @s data.T.Dimension set value 3
execute unless entity @s[tag=used_save] at @e[tag=self,limit=1] as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link if data entity @s data.Waypoints[0].new run data modify entity @s data.Waypoints append from entity @s data.T
tag @s remove self

execute unless entity @s[tag=short] run function powers:powers/teleporter/sl/gen_list
execute if entity @s[tag=short] run function powers:powers/teleporter/sl/short_list

