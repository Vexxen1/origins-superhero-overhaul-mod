tellraw @p ["",{"text":"[Your friend request too ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" has been accepted]","color":"gold"}]
tellraw @s {"text":"[Friend request accepted]","color":"gold"}

tag @p add p
execute at @s as @e[tag=p,limit=1] run function vexxens_datapacks:friends/ex/add_friend
tag @p remove p

tag @a remove friendslistgot

function vexxens_datapacks:friends/ex/add_friend

playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 2 2
playsound minecraft:block.note_block.bell voice @p ~ ~ ~ 2 2