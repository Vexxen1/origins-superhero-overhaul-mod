tag @s add short
execute unless entity @s[tag=used_load] unless entity @s[tag=crouch] run function powers:powers/teleporter/sl/teleport
execute unless entity @s[tag=used_load] if entity @s[tag=crouch] run function powers:powers/teleporter/sl/up
tag @s remove short
tag @s add used_load