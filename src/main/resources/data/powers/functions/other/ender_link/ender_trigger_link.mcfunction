
scoreboard players set @s cal1 0
execute if data entity @s SelectedItem.tag.ender_trigger run item modify entity @s weapon.mainhand powers:ender_link/unlink_trigger
execute if data entity @s Inventory[{Slot: -106b}].tag.ender_trigger run item modify entity @s weapon.offhand powers:ender_link/unlink_trigger

execute if block ^ ^ ^0.5 #powers:replaceable if score @s cal1 matches 0 run scoreboard players set @s cal1 1
execute if block ^ ^ ^1 #powers:replaceable if score @s cal1 matches 1 run scoreboard players set @s cal1 2
execute if block ^ ^ ^1.5 #powers:replaceable if score @s cal1 matches 2 run scoreboard players set @s cal1 3
execute if block ^ ^ ^2 #powers:replaceable if score @s cal1 matches 3 run scoreboard players set @s cal1 4
execute if block ^ ^ ^2.5 #powers:replaceable if score @s cal1 matches 4 run scoreboard players set @s cal1 5
execute if block ^ ^ ^3 #powers:replaceable if score @s cal1 matches 5 run scoreboard players set @s cal1 6
execute if block ^ ^ ^3.5 #powers:replaceable if score @s cal1 matches 6 run scoreboard players set @s cal1 7
execute if block ^ ^ ^4 #powers:replaceable if score @s cal1 matches 7 run scoreboard players set @s cal1 8
execute if block ^ ^ ^4.5 #powers:replaceable if score @s cal1 matches 8 run scoreboard players set @s cal1 9
execute if block ^ ^ ^5 #powers:replaceable if score @s cal1 matches 9 run scoreboard players set @s cal1 10

execute if score @s cal1 matches 0 positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 1 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 2 positioned ^ ^ ^1.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 3 positioned ^ ^ ^2 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 4 positioned ^ ^ ^2.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 5 positioned ^ ^ ^3 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 6 positioned ^ ^ ^3.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 7 positioned ^ ^ ^4 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 8 positioned ^ ^ ^4.6 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
execute if score @s cal1 matches 9 positioned ^ ^ ^5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/link2
playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 0.4 2
execute if entity @s[tag=link] if data entity @s SelectedItem.tag.ender_trigger run item modify entity @s weapon.mainhand powers:ender_link/link_trigger
execute if entity @s[tag=link] if data entity @s Inventory[{Slot: -106b}].tag.ender_trigger run item modify entity @s weapon.offhand powers:ender_link/link_trigger

tag @s remove link
