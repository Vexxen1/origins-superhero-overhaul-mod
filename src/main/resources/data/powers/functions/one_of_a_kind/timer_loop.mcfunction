execute unless data storage powers:one_of_a_kind data.test[0].done store result score T cal1 run data get storage powers:one_of_a_kind data.test[0].timer
execute unless data storage powers:one_of_a_kind data.test[0].done run scoreboard players add T cal1 1
execute unless data storage powers:one_of_a_kind data.test[0].done store result storage powers:one_of_a_kind data.test[0].timer int 1 run scoreboard players get T cal1

execute unless data storage powers:one_of_a_kind data.test[0].done unless score T cal1 matches 51840000.. run data modify storage powers:one_of_a_kind data.test append from storage powers:one_of_a_kind data.test[0]
data remove storage powers:one_of_a_kind data.test[0]

execute unless data storage powers:one_of_a_kind data.test[0].done run function powers:one_of_a_kind/timer_loop
