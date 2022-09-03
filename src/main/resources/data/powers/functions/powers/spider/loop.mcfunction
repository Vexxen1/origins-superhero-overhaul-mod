
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