scoreboard players operation in cal1 = @s power_id
scoreboard players operation @s ooak = @s power_id
function powers:one_of_a_kind/rfilter

execute if score @s power_id = T power_id run tag @s add remove_power
execute if score @s power_id = T power_id run tellraw @s[gamemode=creative] {"text":"you got a power is already taken, randomizing agian."}
execute unless score @s power_id = T power_id unless entity @s[tag=removed_power] run function powers:one_of_a_kind/store

tag @s add one_of_a_kind

scoreboard players set @s ooak -1
function powers:one_of_a_kind/remove

scoreboard players operation @s ooak = @s power_id