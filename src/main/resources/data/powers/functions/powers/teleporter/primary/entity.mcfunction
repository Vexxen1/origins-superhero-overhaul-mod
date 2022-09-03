
tag @e[type=#powers:arrow_targets,limit=1,sort=nearest,tag=!self] add at

execute rotated as @e[tag=at,limit=1] rotated ~ 0 if block ^ ^ ^-2 #powers:nonsolid if block ^ ^1 ^-2 #powers:nonsolid unless block ^ ^-1 ^-2 #powers:nonsolid run tag @s add behind
execute if entity @s[tag=behind] rotated as @e[tag=at] rotated ~ 0 positioned ^ ^ ^-2 run function powers:powers/teleporter/teleport
execute if entity @s[tag=behind] rotated as @e[tag=at] rotated ~ 0 positioned ^ ^ ^-2 run tp @s ~ ~ ~ facing entity @e[tag=at,limit=1]


execute if entity @s[tag=!behind] unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run function powers:powers/teleporter/teleport

tag @s remove behind
tag @e[type=#powers:arrow_targets,limit=1,sort=nearest,tag=!self] remove at

scoreboard players set Raycast num 0

tag @s add hit
