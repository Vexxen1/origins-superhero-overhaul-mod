
data remove storage temp:temp blocks
tag @s remove got
tag @s add safe
execute positioned ~-2.5 ~4 ~-2.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function powers:powers/huge/cp/store_loop

execute if entity @s[tag=safe] run data remove storage temp:temp blocks
execute if entity @s[tag=safe] run data modify storage temp:temp blocks set from entity @s SelectedItem.tag.Blocks
execute if entity @s[tag=safe] run execute positioned ~2 ~ ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function powers:powers/huge/cp/place_loop
execute if entity @s[tag=safe,gamemode=!creative] run item modify entity @s weapon.mainhand powers:remove1

