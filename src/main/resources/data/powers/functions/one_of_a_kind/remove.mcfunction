scoreboard players operation in cal1 = @s ooak
function powers:one_of_a_kind/mfilter
data remove storage powers:one_of_a_kind data.powers_in_use[{matches:1}]
data remove storage powers:one_of_a_kind data.powers_in_use[].matches

scoreboard players reset @s ooak
tag @s remove ok
tag @s remove one_of_a_kind
