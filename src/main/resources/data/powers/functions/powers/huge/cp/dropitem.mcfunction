summon item ~ ~ ~ {Tags:["replace"],Item:{id:"minecraft:bedrock",Count:1b,tag:{display:{Name:'{"text":"Mega Block","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Contains a 5x5 area","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},big:1,megablock:1,Blocks:[],Enchantments:[{}]}}}

data remove storage temp:temp blocks
tag @s remove got
execute positioned ~-2.5 ~4 ~-2.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function powers:powers/huge/cp/store_loop

data modify entity @e[tag=replace,limit=1] Item.tag.Blocks set from storage temp:temp blocks
scale set pehkui:base 5 @e[tag=replace,limit=1]

execute unless entity @s[tag=got] run kill @e[tag=replace,limit=1]
tag @e[tag=replace,limit=1] remove replace
