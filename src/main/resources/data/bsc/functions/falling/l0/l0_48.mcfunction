execute if score block bsc matches 7465..7496 run function bsc:falling/l0/p/l0_205
execute if score block bsc matches 7497..7528 run function bsc:falling/l0/p/l0_206
execute if score block bsc matches 7529..7560 run function bsc:falling/l0/p/l0_207
execute if score block bsc matches 7561..7592 run function bsc:falling/l0/p/l0_208
execute if score block bsc matches 7593..7672 run function bsc:falling/l0/p/l0_209
execute if score block bsc matches 7673..7752 run function bsc:falling/l0/p/l0_210
execute if score block bsc matches 7753 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 7754 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
