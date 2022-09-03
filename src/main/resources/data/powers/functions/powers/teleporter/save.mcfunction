tag @s add short
execute unless entity @s[tag=crouch] run function powers:powers/teleporter/sl/new
execute unless entity @s[tag=used_save] if entity @s[tag=crouch] run function powers:powers/teleporter/sl/down
tag @s remove short
tag @s add used_save
