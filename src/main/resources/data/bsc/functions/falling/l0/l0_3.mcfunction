execute if score block bsc matches 31..32 run function bsc:falling/l0/p/l0_7
execute if score block bsc matches 33 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:bedrock",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 34..49 run function bsc:falling/l0/p/l0_8
execute if score block bsc matches 50..65 run function bsc:falling/l0/p/l0_9
execute if score block bsc matches 66 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:sand",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 67 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:red_sand",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 68 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:gravel",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 69 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:gold_ore",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
