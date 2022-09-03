function powers:powers/telekinesis/range_finder
execute if score distance cal5 matches 30.. run scoreboard players set distance cal5 30
execute if score distance cal5 matches ..5 run scoreboard players set distance cal5 5
scoreboard players operation @s teledis = distance cal5
