function powers:useful/dec2bit

data modify storage powers:one_of_a_kind data.powers_in_use[].matches set value 1

execute if score .bit0 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit0:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit0:1}}].matches set value 0
execute if score .bit0 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit0:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit0:0}}].matches set value 0
execute if score .bit1 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit1:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit1:1}}].matches set value 0
execute if score .bit1 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit1:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit1:0}}].matches set value 0
execute if score .bit2 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit2:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit2:1}}].matches set value 0
execute if score .bit2 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit2:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit2:0}}].matches set value 0
execute if score .bit3 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit3:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit3:1}}].matches set value 0
execute if score .bit3 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit3:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit3:0}}].matches set value 0
execute if score .bit4 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit4:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit4:1}}].matches set value 0
execute if score .bit4 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit4:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit4:0}}].matches set value 0
execute if score .bit5 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit5:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit5:1}}].matches set value 0
execute if score .bit5 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit5:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit5:0}}].matches set value 0
execute if score .bit6 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit6:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit6:1}}].matches set value 0
execute if score .bit6 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit6:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit6:0}}].matches set value 0
execute if score .bit7 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit7:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit7:1}}].matches set value 0
execute if score .bit7 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit7:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit7:0}}].matches set value 0
execute if score .bit8 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit8:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit8:1}}].matches set value 0
execute if score .bit8 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit8:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit8:0}}].matches set value 0
execute if score .bit9 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit9:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit9:1}}].matches set value 0
execute if score .bit9 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit9:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit9:0}}].matches set value 0
execute if score .bit10 cal1 matches 0 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit10:1}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit10:1}}].matches set value 0
execute if score .bit10 cal1 matches 1 if data storage powers:one_of_a_kind data.powers_in_use[{bits:{bit1:0}}] run data modify storage powers:one_of_a_kind data.powers_in_use[{bits:{bit10:0}}].matches set value 0
