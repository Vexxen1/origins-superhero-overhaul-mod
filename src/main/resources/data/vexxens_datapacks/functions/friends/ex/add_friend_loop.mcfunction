# stores friends list for @s within vexxens_datapacks:temp friendsT loop
## get info
execute store result score id player_id run data get storage vexxens_datapacks:temp friendsT[0].Player

## 
execute if score id player_id = @s player_id run tag @s add added
data modify storage vexxens_datapacks:temp friendsT append from storage vexxens_datapacks:temp friendsT[0]
data remove storage vexxens_datapacks:temp friendsT[0]


scoreboard players remove length player_id 1
execute if score length player_id matches 1.. unless entity @s[tag=added] run function vexxens_datapacks:friends/ex/add_friend_loop
