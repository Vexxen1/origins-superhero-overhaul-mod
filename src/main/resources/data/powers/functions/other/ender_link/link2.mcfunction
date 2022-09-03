execute as @e[tag=ender_link,sort=nearest,limit=1,distance=..0.25] store result storage powers:temp ender_link int 1 run scoreboard players get @s ender_link_id_in
execute if entity @e[tag=ender_link,sort=nearest,limit=1,distance=..0.25] run tag @s add link
particle minecraft:dust 1 0 0 5
