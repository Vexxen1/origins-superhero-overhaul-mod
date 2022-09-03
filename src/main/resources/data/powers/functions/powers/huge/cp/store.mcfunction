
scoreboard players set block bsc -1
execute unless block ~ ~ ~ #powers:cheat run function bsc:read
execute unless block ~ ~ ~ #powers:cheat unless block ~ ~ ~ #powers:nonsolid run tag @s add got
execute unless block ~ ~ ~ #powers:nonsolid run tag @s remove safe

execute unless score block bsc matches -1 run setblock ~ ~ ~ air

data remove storage temp:temp temp
data modify storage temp:temp temp set value {id:-1,data:{}}
execute unless score block bsc matches -1 run execute store result storage temp:temp temp.id int 1 run scoreboard players get block bsc
execute unless score block bsc matches -1 run data modify storage temp:temp temp.data set from storage bsc nbt
data modify storage temp:temp blocks prepend from storage temp:temp temp


