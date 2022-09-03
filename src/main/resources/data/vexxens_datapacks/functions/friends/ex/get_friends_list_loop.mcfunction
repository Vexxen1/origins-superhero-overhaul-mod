# stores friends list for @s within vexxens_datapacks:temp friendsT loop
## get info
scoreboard players set length player_id 0
execute store result score length player_id run data get storage vexxens_datapacks:temp friendsTL
execute store result score id player_id run data get storage vexxens_datapacks:temp friendsTL[0].Player

## 
execute if score id player_id = @s player_id run data modify storage vexxens_datapacks:temp friendsT set from storage vexxens_datapacks:temp friendsTL[0].Friends
execute if score id player_id = @s player_id run tag @s add friendslistgot
data remove storage vexxens_datapacks:temp friendsTL[0]

execute if score length player_id matches 1.. unless entity @s[tag=friendslistgot] run function vexxens_datapacks:friends/ex/get_friends_list_loop
