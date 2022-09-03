
execute if entity @s[tag=crouch] unless score @s charge matches ..-1 run function powers:powers/teleporter/charge
execute unless entity @s[tag=used_spectator] unless entity @s[tag=crouch] run function powers:powers/teleporter/sl/gen_list

tag @s add used_spectator