

execute at @s as @a if score @s player_id = @p remove_friend run function vexxens_datapacks:friends/ex/remove_friend
execute at @a if score @p player_id = @s remove_friend run function vexxens_datapacks:friends/ex/remove_friend

execute at @s as @a if score @s player_id = @p remove_friend run tellraw @s ["",{"text":"[Friend ","color":"gold"},{"selector":"@p","color":"gold"},{"text":" removed you as a friend]","color":"gold"}]
execute at @s as @a if score @s player_id = @p remove_friend run tellraw @p ["",{"text":"[Friend ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" Removed]","color":"gold"}]

scoreboard players set @s remove_friend 0
