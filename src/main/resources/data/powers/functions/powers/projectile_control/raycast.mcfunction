
scoreboard players remove Raycast num 1

execute unless block ^ ^ ^0.5 #powers:nonsolid run scoreboard players set Raycast num 0

execute as @e[distance=..10,dx=0,type=#powers:arrow_targets,tag=!self,tag=!pos] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add entity
execute as @e[distance=..10,dx=0,type=#powers:arrow_targets,tag=!self,tag=!pos] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @e[tag=self] add entity
execute as @e[distance=..10,dx=0,type=#powers:arrow_targets,tag=!self,tag=!pos] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players set Raycast num 0

execute unless block ^ ^ ^0.5 #powers:nonsolid positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=self] add block

execute if entity @e[tag=self,tag=block] positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function powers:powers/projectile_control/mark
execute if entity @e[tag=self,tag=entity] as @e[tag=entity,tag=!self] at @s run function powers:powers/projectile_control/mark

execute as @e[type=#powers:arrows,distance=..10] run data modify entity @s Owner set from entity @e[tag=self,limit=1] UUID

execute unless score Raycast num matches ..0 positioned ^ ^ ^0.5 run function powers:powers/projectile_control/raycast
