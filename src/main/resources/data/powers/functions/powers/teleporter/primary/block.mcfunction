
# cheak if at world hight
execute if block ~ ~1 ~ #powers:nonsolid run tag @s add 1
execute unless block ~ ~1 ~ #powers:nonsolid run tag @s add 2
execute if entity @s[tag=!1,tag=!2] run tag @s add top
tag @s remove 1
tag @s remove 2

# top
execute if block ~ ~1 ~ #powers:nonsolid if block ~ ~2 ~ #powers:nonsolid run tag @s add top
execute if entity @s[tag=top] positioned ~ ~1 ~ align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport
tag @s remove top

# side
execute facing entity @e[tag=self,tag=!teleported] eyes rotated ~ 0 if block ^ ^ ^1 #powers:nonsolid if block ^ ^1 ^1 #powers:nonsolid positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run function powers:powers/teleporter/teleport

scoreboard players set Raycast num 0

tag @s add hit
