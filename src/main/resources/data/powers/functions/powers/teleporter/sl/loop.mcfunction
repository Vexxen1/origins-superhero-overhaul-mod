tag @s add self
execute at @s as @e[tag=waypoint_storage] if score @s waypoint_link = @e[tag=self,limit=1] waypoint_link run tp @s @p
tag @s remove self
