
execute as @e[dx=0,tag=!self] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!self] unless score @e[tag=self,limit=1] gravity.grabnum >= @e[tag=self,limit=1] gravity.grablim run tag @s add grab
execute as @e[dx=0,tag=!self] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!self] unless score @e[tag=self,limit=1] gravity.grabnum >= @e[tag=self,limit=1] gravity.grablim run scoreboard players operation @s player_id_con = @e[tag=self,limit=1] player_id
execute as @e[dx=0,tag=!self] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!self] unless score @e[tag=self,limit=1] gravity.grabnum >= @e[tag=self,limit=1] gravity.grablim run scoreboard players add @e[tag=self,limit=1] gravity.grabnum 1
execute positioned ^ ^ ^0.5 if block ^ ^ ^ #powers:nonsolid unless entity @e[tag=self,distance=50..] run function powers:powers/gravity/grab_loop
