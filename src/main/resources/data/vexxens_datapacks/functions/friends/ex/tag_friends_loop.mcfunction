# stores friends list for @s within vexxens_datapacks:temp friendsT loop
## get info
execute store result score id player_id run data get storage vexxens_datapacks:temp friendsT[0].Player

## 
execute as @a if score id player_id = @s player_id run tag @s add friend
execute as @a if score id player_id = @s player_id at @s run function vexxens_datapacks:friends/ex/tag_pets
data modify storage vexxens_datapacks:temp friendsT append from storage vexxens_datapacks:temp friendsT[0]
data remove storage vexxens_datapacks:temp friendsT[0]


scoreboard players remove length player_id 1
execute if score length player_id matches 1.. run function vexxens_datapacks:friends/ex/tag_friends_loop
