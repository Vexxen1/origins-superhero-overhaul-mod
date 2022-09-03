
execute if block ~ ~ ~ #powers:nonsolid run tag @s add 1a
execute unless block ~ ~ ~ #powers:nonsolid run tag @s add 1b
execute if entity @s[tag=!1a,tag=!1b] run tag @s add hit
tag @s remove 1a
tag @s remove 1b

execute unless entity @s[tag=jump] unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit
execute if entity @s[tag=jump] if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~1 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-1 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~2 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-2 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hit

tag @s remove hitUU
tag @s remove hitU
tag @s remove hitN
tag @s remove hitD
tag @s remove hitDD

execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~2 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitUU
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~2 ~ if entity @s[tag=hitUU] align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~1 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitU
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~1 ~ if entity @s[tag=hitU] align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

execute unless entity @s[tag=jump] positioned ~ ~ ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitN
execute if entity @s[tag=jump] positioned ~ ~ ~ if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitN
execute positioned ~ ~ ~ if entity @s[tag=hitN] align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-1 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitD
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-1 ~ if entity @s[tag=hitD] align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-2 ~ unless block ~ ~-1 ~ #powers:nonsolid if block ~ ~ ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid run tag @s add hitDD
execute unless entity @s[tag=jump,tag=crouch] positioned ~ ~-2 ~ if entity @s[tag=hitDD] align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

execute unless entity @s[tag=hit] unless entity @s[distance=..1] facing entity @e[tag=self] feet positioned ^ ^ ^0.5 run function powers:powers/teleporter/secondary/backray
