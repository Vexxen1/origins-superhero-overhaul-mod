tag @s add self
execute as @e[type=!minecraft:marker] if score @s player_id_con = @e[tag=self,limit=1] player_id run tag @s remove aim_target
execute as @e[type=!minecraft:marker] if score @s player_id_con = @e[tag=self,limit=1] player_id run scoreboard players reset @s player_id_con
execute as @e[type=minecraft:marker] if score @s player_id_con = @e[tag=self,limit=1] player_id run kill @s[tag=!linkedT]

tag @s remove self