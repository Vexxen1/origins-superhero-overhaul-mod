execute if data entity @s Inventory run data modify storage powers:temp data4 set from entity @s Inventory[{Slot: 100b}].tag
execute if data entity @s ArmorItems run data modify storage powers:temp data4 set from entity @s ArmorItems[0].tag
execute if data entity @s Inventory store result score @s datatransfur run data get entity @s Inventory[{Slot: 100b}].Count
execute if data entity @s ArmorItems store result score @s datatransfur run data get entity @s ArmorItems[0].Count
item replace entity @s armor.feet with minecraft:golden_boots
item modify entity @s armor.feet powers:copy
