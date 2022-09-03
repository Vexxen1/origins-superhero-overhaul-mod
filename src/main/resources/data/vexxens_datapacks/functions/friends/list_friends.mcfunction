function vexxens_datapacks:friends/tag_friends

tag @s add self
tellraw @s {"text":"-----[List of Friends]-----","color":"gold"}
execute as @a[tag=friend] at @s run tellraw @a[tag=self] ["",{"text":"-","color":"white"},{"text":" ","color":"gold"},{"selector":"@s","color":"gold"},{"text":", id:","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"player_id"},"color":"gold"}]
tellraw @s {"text":"---------------------------","color":"gold"}
tag @s remove self

tag @a remove friend
scoreboard players set @s list_friends 0