
scoreboard players remove Raycast num 1


execute as @e[distance=..10,dx=0,type=#powers:arrow_targets,tag=!self,tag=!pos] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] at @s as @e[tag=self] run function powers:powers/teleporter/primary/entity

execute unless block ^ ^ ^0.5 #powers:teleporter positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=self] run function powers:powers/teleporter/primary/block

execute unless score Raycast num matches ..0 positioned ^ ^ ^0.5 run function powers:powers/teleporter/primary/raycast
