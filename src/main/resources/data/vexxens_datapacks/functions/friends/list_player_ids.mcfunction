
tag @s add self
tellraw @s {"text":"-----[Player Ids]-----","color":"gold"}
execute as @a[gamemode=!spectator] at @s run tellraw @a[tag=self] ["",{"text":"-","color":"white"},{"text":" ","color":"gold"},{"selector":"@s","color":"gold"},{"text":", id:","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"player_id"},"color":"gold"}]
tellraw @s {"text":"----------------------","color":"gold"}
tag @s remove self

scoreboard players set @s list_player_ids 0
