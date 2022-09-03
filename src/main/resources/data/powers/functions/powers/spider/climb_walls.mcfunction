
scoreboard players set @e gravity -1
function powers:powers/gravitychanger

tag @s remove onblock
execute if score @s gravity matches 1 unless block ~ ~0.5 ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 3 unless block ~ ~ ~0.5 #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 2 unless block ~ ~ ~-0.5 #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 4 unless block ~-0.5 ~ ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 5 unless block ~0.5 ~ ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 0 unless block ~ ~-0.5 ~ #powers:nonsolid run tag @s add onblock


# up
execute if entity @s[tag=onblock] if score @s gravity matches 1 unless score @s xrotation matches -145..145 run execute unless block ~ ~-0.5 ~-0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 1 if score @s xrotation matches -145..-45 run execute unless block ~-0.301 ~-0.5 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 1 if score @s xrotation matches 45..145 run execute unless block ~0.301 ~-0.5 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 1 if score @s xrotation matches -45..45 run execute unless block ~ ~-0.5 ~0.301 #powers:nonsolid run gravity rotate forward

# south
execute if entity @s[tag=onblock] if score @s gravity matches 3 unless score @s xrotation matches -145..145 run execute unless block ~ ~-0.301 ~-0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 3 if score @s xrotation matches 45..145 run execute unless block ~-0.301 ~ ~-0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 3 if score @s xrotation matches -45..45 run execute unless block ~ ~0.301 ~-0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 3 if score @s xrotation matches -145..-45 run execute unless block ~0.301 ~ ~-0.5 #powers:nonsolid run gravity rotate forward

# north
execute if entity @s[tag=onblock] if score @s gravity matches 2 unless score @s xrotation matches -145..145 run execute unless block ~ ~0.301 ~0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 2 if score @s xrotation matches 45..145 run execute unless block ~-0.301 ~ ~0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 2 if score @s xrotation matches -45..45 run execute unless block ~ ~-0.301 ~0.5 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 2 if score @s xrotation matches -145..-45 run execute unless block ~0.301 ~ ~0.5 #powers:nonsolid run gravity rotate forward

# west
execute if entity @s[tag=onblock] if score @s gravity matches 4 unless score @s xrotation matches -145..145 run execute unless block ~0.5 ~ ~-0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 4 if score @s xrotation matches 45..145 run execute unless block ~0.5 ~0.301 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 4 if score @s xrotation matches -45..45 run execute unless block ~0.5 ~ ~0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 4 if score @s xrotation matches -145..-45 run execute unless block ~0.5 ~-0.301 ~ #powers:nonsolid run gravity rotate forward

# east
execute if entity @s[tag=onblock] if score @s gravity matches 5 unless score @s xrotation matches -145..145 run execute unless block ~-0.5 ~ ~-0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 5 if score @s xrotation matches 45..145 run execute unless block ~-0.5 ~-0.301 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 5 if score @s xrotation matches -45..45 run execute unless block ~-0.5 ~ ~0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 5 if score @s xrotation matches -145..-45 run execute unless block ~-0.5 ~0.301 ~ #powers:nonsolid run gravity rotate forward

# down
execute if entity @s[tag=onblock] if score @s gravity matches 0 unless score @s xrotation matches -145..145 run execute unless block ~ ~0.5 ~-0.301 #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 0 if score @s xrotation matches -145..-45 run execute unless block ~0.301 ~0.5 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 0 if score @s xrotation matches 45..145 run execute unless block ~-0.301 ~0.5 ~ #powers:nonsolid run gravity rotate forward
execute if entity @s[tag=onblock] if score @s gravity matches 0 if score @s xrotation matches -45..45 run execute unless block ~ ~0.5 ~0.301 #powers:nonsolid run gravity rotate forward

scoreboard players set @e gravity -1
function powers:powers/gravitychanger

# fall

tag @s remove onblock
execute if score @s gravity matches 1 unless block ~ ~0.5 ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 3 unless block ~ ~ ~0.5 #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 2 unless block ~ ~ ~-0.5 #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 4 unless block ~-0.5 ~ ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 5 unless block ~0.5 ~ ~ #powers:nonsolid run tag @s add onblock
execute if score @s gravity matches 0 unless block ~ ~-0.5 ~ #powers:nonsolid run tag @s add onblock

execute unless entity @s[tag=onblock] run function powers:powers/spider/down