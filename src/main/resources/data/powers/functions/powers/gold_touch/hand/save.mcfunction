data remove storage powers:temp main
data remove storage powers:temp off
data remove storage powers:temp mcount
data remove storage powers:temp ocount

data modify storage powers:temp main set from entity @s SelectedItem.tag
data modify storage powers:temp off set from entity @s Inventory[{Slot: -106b}].tag
data modify storage powers:temp mcount set from entity @s SelectedItem.Count
data modify storage powers:temp ocount set from entity @s Inventory[{Slot: -106b}].Count
