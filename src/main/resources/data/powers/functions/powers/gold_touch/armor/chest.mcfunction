execute if data entity @s Inventory run data modify storage powers:temp data4 set from entity @s Inventory[{Slot: 102b}].tag
execute if data entity @s ArmorItems run data modify storage powers:temp data4 set from entity @s ArmorItems[2].tag
execute if data entity @s Inventory store result score @s datatransfur run data get entity @s Inventory[{Slot: 102b}].Count
execute if data entity @s ArmorItems store result score @s datatransfur run data get entity @s ArmorItems[2].Count
item replace entity @s armor.chest with minecraft:golden_chestplate
item modify entity @s armor.chest powers:copy
