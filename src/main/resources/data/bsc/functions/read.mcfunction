data remove storage bsc nbt
execute if data block ~ ~ ~ {} run data modify storage bsc nbt set from block ~ ~ ~
scoreboard players set block bsc -1
function bsc:read/l3/l3_0

execute if score block bsc matches -1 run function bsc:read/ex/m