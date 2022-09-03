# player_id_on_tab

tellraw @s {"text":"","color":"red"}
tellraw @s {"text":"-----[ Superhero Origins Overhaul Gamerules ]-----","color":"green"}

execute if score player_id_on_tab SOO_gamerules matches 1 run tellraw @s ["",{"text":"Player Id On Tab List:","color":"light_purple"},{"text":" ","color":"green"},{"text":"[True]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 1"}},{"text":" ","color":"green"},{"text":"[False]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 0"}}]
execute if score player_id_on_tab SOO_gamerules matches -1 run tellraw @s ["",{"text":"Player Id On Tab List:","color":"light_purple"},{"text":" ","color":"green"},{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 1"}},{"text":" ","color":"green"},{"text":"[False]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 0"}}]
execute unless score player_id_on_tab SOO_gamerules matches -1..1 run tellraw @s ["",{"text":"Player Id On Tab List:","color":"light_purple"},{"text":" ","color":"green"},{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 1"}},{"text":" ","color":"green"},{"text":"[False]","bold":false,"color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set player_id_on_tab SOO_gamerules 0"}}]

tellraw @s {"text":"","color":"red"}
tellraw @s {"text":"","color":"red"}

scoreboard players set @s SOO_gamerules 0
