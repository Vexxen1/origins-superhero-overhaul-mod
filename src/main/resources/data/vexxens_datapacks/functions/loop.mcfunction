
# friends system
execute unless data storage vexxens_datapacks:friends players run data merge storage vexxens_datapacks:friends {players:[]}

scoreboard players enable @a add_friend
scoreboard players enable @a remove_friend
scoreboard players enable @a list_friends
scoreboard players enable @a list_player_ids
scoreboard players enable @a friends_list_help

execute as @a if score @s add_friend matches 1.. at @s run function vexxens_datapacks:friends/add_friend
execute as @a if score @s remove_friend matches 1.. at @s run function vexxens_datapacks:friends/remove_friend
execute as @a if score @s list_friends matches 1.. at @s run function vexxens_datapacks:friends/list_friends
execute as @a if score @s list_player_ids matches 1.. at @s run function vexxens_datapacks:friends/list_player_ids
execute as @a if score @s friends_list_help matches 1.. at @s run function vexxens_datapacks:friends/friends_list_help

execute as @a if score @s add_friend matches 0 at @s run scoreboard players set @p friend_request_timer 0

tag @a remove FR.y
tag @a remove FR.n
tag @a remove FR.c
tag @a remove friendslistgot

