# adds @s to storage vexxens_datapacks:friends players @p's friends list

data remove storage vexxens_datapacks:temp friendsT
data remove storage vexxens_datapacks:temp friendsTL

## get friends list
execute as @p at @s run function vexxens_datapacks:friends/ex/get_friends_list


## test if friend is already added
execute store result score length player_id run data get storage vexxens_datapacks:temp friendsT
function vexxens_datapacks:friends/ex/add_friend_loop


## add new friend to data
execute if entity @s[tag=!added] run data modify storage vexxens_datapacks:temp friendsT prepend value {Player:-1}
execute if entity @s[tag=!added] run execute store result storage vexxens_datapacks:temp friendsT[0].Player int 1 run scoreboard players get @s player_id


## save data
scoreboard players set length player_id 0
execute if entity @s[tag=!added] run execute store result score length player_id run data get storage vexxens_datapacks:friends players

data modify storage vexxens_datapacks:temp test1 set from storage vexxens_datapacks:friends friendsT

execute if entity @s[tag=!added] run execute as @p at @s run function vexxens_datapacks:friends/ex/save_friends_list
execute if entity @s[tag=!added] run tag @p remove friendslistgot
tag @s remove added

data modify storage vexxens_datapacks:temp test2 set from storage vexxens_datapacks:friends friendsT
