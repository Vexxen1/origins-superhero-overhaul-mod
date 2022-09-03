scoreboard players set Raycast num 2000
tag @s add self

execute at @s anchored eyes run function powers:powers/projectile_control/raycast
tag @s remove self
tag @s remove entity
tag @s remove block
