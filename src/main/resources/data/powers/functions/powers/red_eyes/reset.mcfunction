tag @s add self
execute as @e[tag=power_disable] if score @s red_eyes_link = @a[tag=self,limit=1] player_id run tag @s remove red_eyes_disable
execute as @e[tag=power_disable] if score @s red_eyes_link = @a[tag=self,limit=1] player_id run tag @s remove power_disable
tag @s remove self