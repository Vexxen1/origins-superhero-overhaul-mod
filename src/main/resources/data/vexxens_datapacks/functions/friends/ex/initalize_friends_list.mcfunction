
data modify storage vexxens_datapacks:friends players prepend value {Player: -1,Friends:[]}
execute store result storage vexxens_datapacks:friends players[0].Player int 1 run scoreboard players get @s player_id
