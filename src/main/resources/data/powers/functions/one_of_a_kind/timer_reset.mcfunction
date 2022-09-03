scoreboard players operation in cal1 = @s ooak
function powers:one_of_a_kind/mfilter
data remove storage powers:one_of_a_kind data.powers_in_use[{matches:1}].timer
data remove storage powers:one_of_a_kind data.powers_in_use[].matches

scoreboard players set in cal1 -1
function powers:one_of_a_kind/sremove
