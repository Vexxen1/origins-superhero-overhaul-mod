# stores friends list for @s within vexxens_datapacks:temp friendsT loop
## get info
execute store result score id player_id run data get storage vexxens_datapacks:friends players[0].Player

## 
execute if score id player_id = @s player_id run data modify storage vexxens_datapacks:friends players[0].Friends set from storage vexxens_datapacks:temp friendsT
execute if score id player_id = @s player_id run tag @s add friendslistgot
data modify storage vexxens_datapacks:friends players append from storage vexxens_datapacks:friends players[0]
data remove storage vexxens_datapacks:friends players[0]

scoreboard players remove length player_id 1
execute if score length player_id matches 1.. unless entity @s[tag=friendslistgot] run function vexxens_datapacks:friends/ex/save_friends_list
