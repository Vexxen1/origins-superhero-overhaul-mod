execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id run kill @s
summon marker ~ ~ ~ {Tags:["block_mark"]}
scoreboard players operation @e[tag=block_mark,tag=!init] player_id_con = @e[tag=self,limit=1] player_id
tag @e[tag=block_mark,tag=!init] add init
