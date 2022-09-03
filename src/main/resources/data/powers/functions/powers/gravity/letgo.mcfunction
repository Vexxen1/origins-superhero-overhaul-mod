execute as @e[tag=grab] if score @s player_id_con = @p player_id at @s run tag @s add remove
execute as @e[tag=remove] at @s run tag @s remove grab
execute as @e[tag=remove] at @s run scoreboard players reset @s player_id_con
execute as @e[tag=remove] at @s run tag @s remove remove
tag @s remove distance_got
scoreboard players set @s gravity.grabnum 0
scoreboard players set @s gravity.timer 0
