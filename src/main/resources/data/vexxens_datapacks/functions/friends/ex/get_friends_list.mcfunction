# stores friends list for @s within vexxens_datapacks:temp friendsT
## get info

data remove storage vexxens_datapacks:temp friendsT
data remove storage vexxens_datapacks:temp friendsTL
data modify storage vexxens_datapacks:temp friendsTL set from storage vexxens_datapacks:friends players
scoreboard players set length player_id 0
execute store result score length player_id run data get storage vexxens_datapacks:temp friendsTL

## loop
execute if score length player_id matches 1.. run function vexxens_datapacks:friends/ex/get_friends_list_loop
tag @s remove friendslistgot

# store
execute if score length player_id matches 0 run function vexxens_datapacks:friends/ex/initalize_friends_list
execute if score length player_id matches 0 run data modify storage vexxens_datapacks:temp friendsT set value []

# {Player: -1,Friends:[{Player:1},{}]}
