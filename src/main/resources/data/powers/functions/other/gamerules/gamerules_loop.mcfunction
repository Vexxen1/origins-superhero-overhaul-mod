execute if score player_id_on_tab SOO_gamerules matches 1 run scoreboard objectives setdisplay list player_id

execute if score player_id_on_tab SOO_gamerules matches 0 run scoreboard objectives setdisplay list
execute if score player_id_on_tab SOO_gamerules matches 0 run scoreboard players set player_id_on_tab SOO_gamerules -1

