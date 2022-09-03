# filter
function powers:useful/dec2bit

data modify storage powers:one_of_a_kind data.test set from storage powers:one_of_a_kind data.powers_in_use

execute if score .bit0 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit0:1}}]
execute if score .bit0 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit0:0}}]
execute if score .bit1 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit1:1}}]
execute if score .bit1 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit1:0}}]
execute if score .bit2 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit2:1}}]
execute if score .bit2 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit2:0}}]
execute if score .bit3 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit3:1}}]
execute if score .bit3 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit3:0}}]
execute if score .bit4 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit4:1}}]
execute if score .bit4 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit4:0}}]
execute if score .bit5 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit5:1}}]
execute if score .bit5 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit5:0}}]
execute if score .bit6 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit6:1}}]
execute if score .bit6 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit6:0}}]
execute if score .bit7 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit7:1}}]
execute if score .bit7 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit7:0}}]
execute if score .bit8 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit8:1}}]
execute if score .bit8 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit8:0}}]
execute if score .bit9 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit9:1}}]
execute if score .bit9 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit9:0}}]
execute if score .bit10 cal1 matches 0 run data remove storage powers:one_of_a_kind data.test[{bits:{bit10:1}}]
execute if score .bit10 cal1 matches 1 run data remove storage powers:one_of_a_kind data.test[{bits:{bit10:0}}]

# test
scoreboard players reset T power_id
execute store result score T power_id run data get storage powers:one_of_a_kind data.test[0].power_id
