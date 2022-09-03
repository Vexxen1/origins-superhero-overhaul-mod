execute if score origins relationship matches 1 if score pekui relationship matches 1 run tellraw @a {"text":"Successfully loaded Superhero Origins Overhaul!!!","bold":true,"underlined":false,"color":"green"}
execute unless score origins relationship matches 1 unless score pekui relationship matches 1 run tellraw @a {"text":"Unsuccessfully loaded Superhero Origins Overhaul!!!","bold":true,"underlined":false,"color":"dark_red"}

scoreboard players set issues relationship 0
execute unless score minecraft relationship matches 1 run scoreboard players set issues relationship 1
execute unless score gravity_changer relationship matches 1 run scoreboard players set issues relationship 1
execute unless score nbtcrafting relationship matches 1 run scoreboard players set issues relationship 1
execute unless score ender_bundle relationship matches 1 run scoreboard players set issues relationship 1
execute unless score chunk_loader relationship matches 1 run scoreboard players set issues relationship 1
execute unless score scarpet relationship matches 1 run scoreboard players set issues relationship 1

execute if score issues relationship matches 1 run tellraw @a ["",{"text":"There is some issues/warnings thou: ","color":"blue"},{"text":"[See Issues]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function powers:other/relationships/message/see_issues"}}]

tellraw @a {"text":"","color":"red"}
