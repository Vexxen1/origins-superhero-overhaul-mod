
# detect hits
execute as @e[dx=0,tag=!self] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add hit

execute positioned ^ ^ ^0.25 if block ^ ^ ^ #powers:teleporter unless entity @e[tag=!self,tag=hit] if entity @a[tag=self,distance=..100] run function powers:powers/red_eyes/ray_loop
