data modify storage powers:attack item set from entity @s Inventory[{Slot: -106b}]
execute if entity @s[tag=mainhand] run data modify storage powers:attack item set from entity @s SelectedItem
tag @s remove mainhand

execute unless entity @e[type=minecraft:zombie,tag=testdam] run summon zombie ~ -80 ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["testdam"],HandItems:[{id:"minecraft:stone",Count:1b},{}],Attributes:[{Name:generic.attack_damage,Base:1}]}

data modify entity @e[tag=testdam,limit=1] HandItems[0] set from storage powers:attack item
data modify entity @e[tag=testdam,limit=1] ActiveEffects set from entity @s ActiveEffects
data modify entity @e[tag=testdam,limit=1] Attributes set from entity @s Attributes
