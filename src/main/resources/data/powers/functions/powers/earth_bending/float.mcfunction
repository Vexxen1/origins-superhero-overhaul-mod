execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/earth run function bsc:read
execute at @s as @e[tag=bsc_falling_A] if score @s player_id_con = @p player_id run kill @s
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/earth positioned ~ ~-0.45 ~ run function bsc:falling
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/dam6 run tag @e[tag=bsc_falling_A,tag=!done] add dam6
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/dam9 run tag @e[tag=bsc_falling_A,tag=!done] add dam9
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/dam12 run tag @e[tag=bsc_falling_A,tag=!done] add dam12
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/fire run tag @e[tag=bsc_falling_A,tag=!done] add fire
execute at @e[tag=self] as @e[tag=block_mark] if score @s player_id_con = @p player_id at @s if block ~ ~ ~ #powers:earth_bending/earth run setblock ~ ~ ~ air
execute as @e[tag=bsc_falling_A,tag=!done] run data modify entity @s NoGravity set value 1b
execute as @e[tag=bsc_falling_A,tag=!done] run scale delay set pehkui:height 0 @s
execute as @e[tag=bsc_falling_A,tag=!done] run scale set pehkui:height 0.01 @s
execute at @e[tag=self] as @e[tag=bsc_falling_A,tag=!done] run data modify entity @s Pos[1] set from entity @p Pos[1]
execute as @e[tag=bsc_falling_A,tag=!done] at @s run tp @s ~ ~1.5 ~
execute at @e[tag=self] as @e[tag=bsc_falling_A,tag=!done] run scoreboard players operation @s player_id_con = @p player_id

execute if entity @e[tag=bsc_falling_A,tag=!done] run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 0.5 2
execute as @e[tag=bsc_falling_A,tag=!done] run tag @s add done

tag @e remove self
