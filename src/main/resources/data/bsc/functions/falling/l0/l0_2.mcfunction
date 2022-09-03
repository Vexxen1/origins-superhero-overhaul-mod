execute if score block bsc matches 18 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:jungle_planks",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 19 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:acacia_planks",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 20 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 21..22 run function bsc:falling/l0/p/l0_2
execute if score block bsc matches 23..24 run function bsc:falling/l0/p/l0_3
execute if score block bsc matches 25..26 run function bsc:falling/l0/p/l0_4
execute if score block bsc matches 27..28 run function bsc:falling/l0/p/l0_5
execute if score block bsc matches 29..30 run function bsc:falling/l0/p/l0_6
