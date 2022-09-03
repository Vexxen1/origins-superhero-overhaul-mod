
execute if block ~ ~ ~ #powers:earth_bending/earth positioned ~ ~-0.45 ~ run function bsc:read

execute if block ~ ~ ~ #powers:earth_bending/earth positioned ~ ~-0.45 ~ run function bsc:falling
execute if block ~ ~ ~ #powers:earth_bending/dam6 run tag @e[tag=bsc_falling_A,tag=!done] add dam6
execute if block ~ ~ ~ #powers:earth_bending/dam9 run tag @e[tag=bsc_falling_A,tag=!done] add dam9
execute if block ~ ~ ~ #powers:earth_bending/dam12 run tag @e[tag=bsc_falling_A,tag=!done] add dam12
execute if block ~ ~ ~ #powers:earth_bending/fire run tag @e[tag=bsc_falling_A,tag=!done] add fire
execute if block ~ ~ ~ #powers:earth_bending/earth run setblock ~ ~ ~ air

execute as @e[tag=bsc_falling_A,tag=!done] run scale delay set pehkui:height 0 @s
execute as @e[tag=bsc_falling_A,tag=!done] run scale set pehkui:height 0.01 @s
execute at @s as @e[tag=bsc_falling_A,tag=!done] run scoreboard players operation @s player_id_con = @p player_id

