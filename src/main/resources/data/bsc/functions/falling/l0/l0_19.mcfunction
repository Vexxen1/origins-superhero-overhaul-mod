execute if score block bsc matches 2010..2089 run function bsc:falling/l0/p/l0_70
execute if score block bsc matches 2090..2113 run function bsc:falling/l0/p/l0_71
execute if score block bsc matches 2114..3409 run function bsc:falling/l0/p/l0_72
execute if score block bsc matches 3410 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:diamond_ore",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 3411 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_diamond_ore",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 3412 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:diamond_block",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 3413 run summon armor_stand ~ ~ ~ {Small:1b,Marker:0b,Invisible:1b,Tags:["bsc_falling_A"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crafting_table",Properties:{}},Time:1,Tags:["bsc_falling"]}]}
execute if score block bsc matches 3414..3421 run function bsc:falling/l0/p/l0_73
