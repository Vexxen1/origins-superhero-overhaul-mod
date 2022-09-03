tag @s add self
execute at @s anchored eyes as @e[tag=power_disable] if score @s red_eyes_link = @a[tag=self,limit=1] player_id facing entity @s eyes run tp @a[tag=self,limit=1] ~ ~ ~ ~ ~
function powers:powers/red_eyes/ray
execute unless entity @s[tag=looking_at_target] as @e[tag=power_disable] if score @s red_eyes_link = @a[tag=self,limit=1] player_id run tag @s remove red_eyes_disable
execute unless entity @s[tag=looking_at_target] as @e[tag=power_disable] if score @s red_eyes_link = @a[tag=self,limit=1] player_id run tag @s remove power_disable

tag @s remove self

execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.11 ~ run particle minecraft:dust 1 0 0 0.3 ^0.08 ^0.07 ^0.25 0 0 0 1 1 force
execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.11 ~ run particle minecraft:dust 1 0 0 0.3 ^-0.08 ^0.07 ^0.25 0 0 0 1 1 force
