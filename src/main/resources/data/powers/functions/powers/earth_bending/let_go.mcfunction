execute at @e[tag=self] as @e[tag=pull_up] if score @s player_id_con = @p player_id run data modify entity @s NoGravity set value 0b

tag @e[tag=self] remove self
