# make sure the player you tagged you are still looking at
tag @s add self
execute at @s anchored eyes rotated as @s run function powers:powers/red_eyes/ray_loop

tag @a[tag=self] remove looking_at_target
execute as @a[tag=power_disable,tag=!self,tag=hit] if score @s red_eyes_link = @a[tag=self,limit=1] player_id run tag @a[tag=self] add looking_at_target


tag @s remove self
tag @e remove hit