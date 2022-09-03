execute if data entity @s Inventory run data modify storage powers:temp data4 set from entity @s Inventory[{Slot: 101b}].tag
execute if data entity @s ArmorItems run data modify storage powers:temp data4 set from entity @s ArmorItems[1].tag
execute if data entity @s Inventory store result score @s datatransfur run data get entity @s Inventory[{Slot: 101b}].Count
execute if data entity @s ArmorItems store result score @s datatransfur run data get entity @s ArmorItems[1].Count
item replace entity @s armor.legs with minecraft:golden_leggings
item modify entity @s armor.legs powers:copy
