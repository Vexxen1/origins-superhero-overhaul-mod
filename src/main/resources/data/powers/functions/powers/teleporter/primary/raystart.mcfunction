scoreboard players set Raycast num 2000
tag @s add self

execute at @s anchored eyes run function powers:powers/teleporter/primary/raycast

execute if entity @s[tag=!hit] rotated as @s positioned ^ ^ ^50 run function powers:powers/teleporter/teleport

tag @s remove self
tag @s remove entity
tag @s remove block
