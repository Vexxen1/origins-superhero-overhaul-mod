
execute unless block ~ ~ ~ #powers:gold_touch/dont_replace run execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0.84 0 1 ~ ~ ~ 0.5 0.5 0.5 100 100
execute if block ~ ~ ~ #powers:gold_touch/plate unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0.84 0 1 ~ ~ ~ 0.5 0.5 0.5 100 100

execute unless block ~ ~ ~ #powers:gold_touch/dont_replace run execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.amethyst_block.step block @a ~ ~ ~ 0.25
execute if block ~ ~ ~ #powers:gold_touch/plate unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.amethyst_block.step block @a ~ ~ ~ 0.25


execute if block ~ ~ ~ barrel run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ chest run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ trapped_chest run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ hopper run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ dropper run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ dispenser run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ minecraft:furnace run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ minecraft:blast_furnace run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ minecraft:smoker run function powers:powers/gold_touch/drop
execute if block ~ ~ ~ #c:shulker_boxes run function powers:powers/gold_touch/drop

execute if block ~ ~ ~ minecraft:snow[layers=1] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
execute if block ~ ~ ~ minecraft:snow[layers=2] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
execute if block ~ ~ ~ minecraft:snow[layers=3] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
execute if block ~ ~ ~ minecraft:snow[layers=4] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if block ~ ~ ~ #powers:gold_touch/plate unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
execute if block ~ ~ ~ #powers:gold_touch/raw run setblock ~ ~ ~ minecraft:raw_gold_block
execute unless block ~ ~ ~ #powers:gold_touch/dont_replace unless block ~ ~ ~ #powers:gold_touch/raw run setblock ~ ~ ~ minecraft:gold_block
