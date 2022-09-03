execute if score block bsc matches 176..189 run function bsc:falling/l0/p/l0_36
execute if score block bsc matches 190..203 run function bsc:falling/l0/p/l0_37
execute if score block bsc matches 204..217 run function bsc:falling/l0/p/l0_38
execute if score block bsc matches 218..231 run function bsc:falling/l0/p/l0_39
execute if score block bsc matches 232..245 run function bsc:falling/l0/p/l0_40
execute if score block bsc matches 246..259 run function bsc:falling/l0/p/l0_41
execute if score block bsc matches 260 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:sponge",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 261 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:wet_sponge",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
