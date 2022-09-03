# shows if a block can be entered
scoreboard players set Safe num 0
# find direction
## get pos's
summon marker ~ ~ ~ {Tags:["pos"]}
execute store result score nx num run data get entity @e[tag=pos,limit=1] Pos[0]
execute store result score ny num run data get entity @e[tag=pos,limit=1] Pos[1]
execute store result score nz num run data get entity @e[tag=pos,limit=1] Pos[2]

execute store result score x num run data get entity @e[tag=prevpos,limit=1] Pos[0]
execute store result score y num run data get entity @e[tag=prevpos,limit=1] Pos[1]
execute store result score z num run data get entity @e[tag=prevpos,limit=1] Pos[2]
## new - past

scoreboard players operation nx num -= x num
scoreboard players operation ny num -= y num
scoreboard players operation nz num -= z num
#tellraw @a ["",{"score":{"name":"nx","objective":"num"}},{"text":", "},{"score":{"name":"ny","objective":"num"}},{"text":", "},{"score":{"name":"nz","objective":"num"}}]

#tellraw @a ["",{"score":{"name":"fx","objective":"num"}},{"text":", "},{"score":{"name":"fy","objective":"num"}},{"text":", "},{"score":{"name":"fz","objective":"num"}}]

# 
execute at @e[tag=prevpos,limit=1] run function powers:powers/redstone_travel/power
scoreboard players operation Ppower num = power num
function powers:powers/redstone_travel/power
scoreboard players operation Ppower num -= power num

# redstone components
##  tellraw @a ["",{"score":{"name":"Safe","objective":"num"}}]
## minecraft:redstone_wire
execute if block ~ ~ ~ minecraft:redstone_wire if score Ppower num matches 0..1 run scoreboard players set Safe num 1


## minecraft:reapeater
execute if score nx num matches 1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:repeater if block ~ ~ ~ minecraft:repeater[locked=false,facing=west] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches -1 if block ~ ~ ~ minecraft:repeater if block ~ ~ ~ minecraft:repeater[locked=false,facing=south] run scoreboard players set Safe num 1
execute if score nx num matches -1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:repeater if block ~ ~ ~ minecraft:repeater[locked=false,facing=east] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches 1 if block ~ ~ ~ minecraft:repeater if block ~ ~ ~ minecraft:repeater[locked=false,facing=north] run scoreboard players set Safe num 1

## minecraft:comparator
execute if score nx num matches 1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:comparator unless block ~ ~ ~ minecraft:comparator[facing=east] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches -1 if block ~ ~ ~ minecraft:comparator unless block ~ ~ ~ minecraft:comparator[facing=north] run scoreboard players set Safe num 1
execute if score nx num matches -1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:comparator unless block ~ ~ ~ minecraft:comparator[facing=west] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches 1 if block ~ ~ ~ minecraft:comparator unless block ~ ~ ~ minecraft:comparator[facing=south] run scoreboard players set Safe num 1

## minecraft:observer
execute if score nx num matches 1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=west] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches -1 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=south] run scoreboard players set Safe num 1
execute if score nx num matches -1 if score ny num matches 0 if score nz num matches 0 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=east] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 0 if score nz num matches 1 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=north] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches -1 if score nz num matches 0 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=up] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 1 if score nz num matches 0 if block ~ ~ ~ minecraft:observer if block ~ ~ ~ minecraft:observer[facing=down] run scoreboard players set Safe num 1

# minecraft:redstone_wall_torch
execute if score nx num matches 1 if score ny num matches -1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=east] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches -1 if score nz num matches -1 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=north] run scoreboard players set Safe num 1
execute if score nx num matches -1 if score ny num matches -1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=west] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches -1 if score nz num matches 1 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=south] run scoreboard players set Safe num 1

execute at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_torch at @e[tag=pos] if score nx num matches 1 if score ny num matches 1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=east] run scoreboard players set Safe num 1
execute at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_torch at @e[tag=pos] if score nx num matches 0 if score ny num matches 1 if score nz num matches -1 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=north] run scoreboard players set Safe num 1
execute at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_torch at @e[tag=pos] if score nx num matches -1 if score ny num matches 1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=west] run scoreboard players set Safe num 1
execute at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_torch at @e[tag=pos] if score nx num matches 0 if score ny num matches 1 if score nz num matches 1 if block ~ ~ ~ minecraft:redstone_wall_torch if block ~ ~ ~ minecraft:redstone_wall_torch[facing=south] run scoreboard players set Safe num 1

# minecraft:redstone_torch
execute if score nx num matches 1 if score ny num matches 1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_torch at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_wire if block ~ ~ ~ minecraft:redstone_wire[east=side] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 1 if score nz num matches -1 if block ~ ~ ~ minecraft:redstone_torch at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_wire if block ~ ~ ~ minecraft:redstone_wire[north=side] run scoreboard players set Safe num 1
execute if score nx num matches -1 if score ny num matches 1 if score nz num matches 0 if block ~ ~ ~ minecraft:redstone_torch at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_wire if block ~ ~ ~ minecraft:redstone_wire[west=side] run scoreboard players set Safe num 1
execute if score nx num matches 0 if score ny num matches 1 if score nz num matches 1 if block ~ ~ ~ minecraft:redstone_torch at @e[tag=prevpos,limit=1] if block ~ ~ ~ minecraft:redstone_wire if block ~ ~ ~ minecraft:redstone_wire[south=side] run scoreboard players set Safe num 1

execute at @e[tag=prevpos,limit=1] if score ny num matches -1 if block ~ ~ ~ minecraft:redstone_torch run scoreboard players set Safe num 0

execute unless block ~ ~ ~ #powers:redstone at @s anchored eyes positioned ^ ^ ^2.1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #powers:redstone run function powers:powers/redstone_travel/thrupowered
kill @e[tag=pos]


execute if block ~ ~ ~ minecraft:redstone_lamp run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:redstone_lamp positioned ~ ~-1 ~ run function powers:powers/redstone_travel/powerit

execute if block ~ ~ ~ minecraft:note_block run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:note_block positioned ~ ~ ~1 run function powers:powers/redstone_travel/powerit

execute if block ~ ~ ~ minecraft:dispenser run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:dispenser positioned ~ ~-1 ~ run function powers:powers/redstone_travel/powerit

execute if block ~ ~ ~ minecraft:dropper run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:dropper positioned ~ ~-1 ~ run function powers:powers/redstone_travel/powerit

execute if block ~ ~ ~ minecraft:piston run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:piston positioned ~ ~-1 ~ run function powers:powers/redstone_travel/powerit

execute if block ~ ~ ~ minecraft:sticky_piston run scoreboard players set Safe num 1
execute if block ~ ~ ~ minecraft:sticky_piston positioned ~ ~-1 ~ run function powers:powers/redstone_travel/powerit

execute if score Safe num matches 1 run tp @s ~ ~ ~
execute if score Safe num matches 1 run kill @e[tag=prevpos]
execute if score Safe num matches 1 at @s run execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["prevpos"]}

execute if score Safe num matches 2 at @s anchored eyes positioned ^ ^ ^2.1 align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if score Safe num matches 2 run kill @e[tag=prevpos]
execute if score Safe num matches 2 at @s run execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["prevpos"]}

