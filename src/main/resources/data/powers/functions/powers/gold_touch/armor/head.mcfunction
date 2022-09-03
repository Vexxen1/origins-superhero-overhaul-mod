execute if data entity @s Inventory run data modify storage powers:temp data4 set from entity @s Inventory[{Slot: 103b}].tag
execute if data entity @s ArmorItems run data modify storage powers:temp data4 set from entity @s ArmorItems[3].tag
execute if data entity @s Inventory store result score @s datatransfur run data get entity @s Inventory[{Slot: 103b}].Count
execute if data entity @s ArmorItems store result score @s datatransfur run data get entity @s ArmorItems[3].Count
item replace entity @s armor.head with minecraft:golden_helmet
item modify entity @s armor.head powers:copy
