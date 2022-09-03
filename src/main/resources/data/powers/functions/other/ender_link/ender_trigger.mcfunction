
execute if data entity @s Inventory[{Slot: -106b}].tag.ender_trigger store result score T cal1 run data get entity @s Inventory[{Slot: -106b}].tag.link
execute if data entity @s SelectedItem.tag.ender_trigger if data entity @s SelectedItem.tag.link store result score T cal1 run data get entity @s SelectedItem.tag.link

execute as @e[tag=ender_link] if score @s ender_link_id_in = T cal1 run tag @s add active

execute unless score @s ender_link_id_in matches 1.. at @s run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2

scoreboard players set @s ender_link_id_in 2
