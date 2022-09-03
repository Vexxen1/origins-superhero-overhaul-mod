
data remove storage vexxens_datapacks:temp friendsT
data remove storage vexxens_datapacks:temp friendsTL

## get friends list
function vexxens_datapacks:friends/ex/get_friends_list
function vexxens_datapacks:friends/ex/tag_pets

## go thru freand list
execute store result score length player_id run data get storage vexxens_datapacks:temp friendsT
function vexxens_datapacks:friends/ex/tag_friends_loop

