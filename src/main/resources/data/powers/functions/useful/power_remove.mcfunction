scoreboard players set @s power_id -1
tag @s add removed_power
execute unless score @s playstyle matches 0..5 run origin set @s powers:powers powers:playstyles/any
execute if score @s playstyle matches 0 run origin set @s powers:powers powers:playstyles/any
execute if score @s playstyle matches 1 run origin set @s powers:powers powers:playstyles/attack
execute if score @s playstyle matches 2 run origin set @s powers:powers powers:playstyles/challange
execute if score @s playstyle matches 3 run origin set @s powers:powers powers:playstyles/defense
execute if score @s playstyle matches 4 run origin set @s powers:powers powers:playstyles/small
execute if score @s playstyle matches 5 run origin set @s powers:powers powers:playstyles/support
tag @s remove stored
tag @s remove remove_power
