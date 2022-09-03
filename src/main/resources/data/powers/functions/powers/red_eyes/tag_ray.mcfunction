# tag the player you are looking at
tag @s add self
execute at @s anchored eyes rotated as @s run function powers:powers/red_eyes/ray_loop

scoreboard players operation @a[tag=!self,tag=hit] red_eyes_link = @a[tag=self] player_id
tag @a[tag=!self,tag=hit] add red_eyes_disable
tag @a[tag=!self,tag=hit] add power_disable

tag @s remove self
tag @e remove hit