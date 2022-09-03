tag @s add self

execute if entity @s[tag=pickup] at @e[tag=sel] run function powers:powers/huge/pickup
execute if entity @s[tag=place] at @e[tag=sel] if data entity @a[tag=self,limit=1] SelectedItem.tag.megablock run function powers:powers/huge/place

tag @s remove self
execute if data entity @s SelectedItem.tag.big run scale set pehkui:held_item 1
execute if data entity @s SelectedItem.tag.megablock run scale set pehkui:reach 0.01
execute unless data entity @s SelectedItem.tag.megablock run scale set pehkui:reach 5
execute unless data entity @s SelectedItem.tag.big run scale set pehkui:held_item 0.2
tag @s add huge