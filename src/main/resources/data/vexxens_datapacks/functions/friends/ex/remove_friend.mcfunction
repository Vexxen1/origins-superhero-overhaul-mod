# removes @s from storage vexxens_datapacks:friends players @p's friends list

data remove storage vexxens_datapacks:temp friendsT
data remove storage vexxens_datapacks:temp friendsTL

## get friends list
execute as @p at @s run function vexxens_datapacks:friends/ex/get_friends_list
scoreboard players set length player_id 0
execute store result score length player_id run data get storage vexxens_datapacks:temp friendsT
function vexxens_datapacks:friends/ex/remove_friend_loop

## save data

execute store result score length player_id run data get storage vexxens_datapacks:friends players
execute as @p at @s run function vexxens_datapacks:friends/ex/save_friends_list
tag @a remove friendslistgot
