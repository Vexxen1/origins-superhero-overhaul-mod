
data modify storage powers:one_of_a_kind data.test set from storage powers:one_of_a_kind data.powers_in_use
data modify storage powers:one_of_a_kind data.test append value {done:1}
function powers:one_of_a_kind/timer_loop
data remove storage powers:one_of_a_kind data.test[{done:1}]
data modify storage powers:one_of_a_kind data.powers_in_use set from storage powers:one_of_a_kind data.test


