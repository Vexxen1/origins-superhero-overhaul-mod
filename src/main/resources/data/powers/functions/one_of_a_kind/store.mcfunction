
data modify storage powers:one_of_a_kind data.powers_in_use prepend value {power_id: -1, bits: {}}
execute store result storage powers:one_of_a_kind data.powers_in_use[0].power_id int 1 run scoreboard players get @s power_id

scoreboard players operation in cal1 = @s power_id
function powers:useful/dec2bit
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit0 int 1 run scoreboard players get .bit0 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit1 int 1 run scoreboard players get .bit1 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit2 int 1 run scoreboard players get .bit2 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit3 int 1 run scoreboard players get .bit3 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit4 int 1 run scoreboard players get .bit4 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit5 int 1 run scoreboard players get .bit5 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit6 int 1 run scoreboard players get .bit6 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit7 int 1 run scoreboard players get .bit7 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit8 int 1 run scoreboard players get .bit8 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit9 int 1 run scoreboard players get .bit9 cal1
execute store result storage powers:one_of_a_kind data.powers_in_use[0].bits.bit10 int 1 run scoreboard players get .bit10 cal1
