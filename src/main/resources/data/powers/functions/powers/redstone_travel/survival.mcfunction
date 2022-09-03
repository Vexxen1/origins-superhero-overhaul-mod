execute if block ~ ~ ~ #powers:outputs run power revoke @s powers:powers/redstone

# dispenser
execute if block ~ ~ ~ minecraft:dispenser[facing=east] run tp @s ~1 ~ ~
execute if block ~ ~ ~ minecraft:dispenser[facing=north] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ minecraft:dispenser[facing=west] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ minecraft:dispenser[facing=south] run tp @s ~ ~ ~1
execute if block ~ ~ ~ minecraft:dispenser[facing=up] run tp @s ~ ~1 ~
execute if block ~ ~ ~ minecraft:dispenser[facing=down] run tp @s ~ ~-1 ~

# dropper
execute if block ~ ~ ~ minecraft:dropper[facing=east] run tp @s ~1 ~ ~
execute if block ~ ~ ~ minecraft:dropper[facing=north] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ minecraft:dropper[facing=west] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ minecraft:dropper[facing=south] run tp @s ~ ~ ~1
execute if block ~ ~ ~ minecraft:dropper[facing=up] run tp @s ~ ~1 ~
execute if block ~ ~ ~ minecraft:dropper[facing=down] run tp @s ~ ~-1 ~

# piston
execute if block ~ ~ ~ minecraft:piston[facing=east] run tp @s ~2 ~ ~
execute if block ~ ~ ~ minecraft:piston[facing=north] run tp @s ~ ~ ~-2
execute if block ~ ~ ~ minecraft:piston[facing=west] run tp @s ~-2 ~ ~
execute if block ~ ~ ~ minecraft:piston[facing=south] run tp @s ~ ~ ~2
execute if block ~ ~ ~ minecraft:piston[facing=up] run tp @s ~ ~2 ~
execute if block ~ ~ ~ minecraft:piston[facing=down] run tp @s ~ ~-2 ~

# sticky piston
execute if block ~ ~ ~ minecraft:sticky_piston[facing=east] run tp @s ~2 ~ ~
execute if block ~ ~ ~ minecraft:sticky_piston[facing=north] run tp @s ~ ~ ~-2
execute if block ~ ~ ~ minecraft:sticky_piston[facing=west] run tp @s ~-2 ~ ~
execute if block ~ ~ ~ minecraft:sticky_piston[facing=south] run tp @s ~ ~ ~2
execute if block ~ ~ ~ minecraft:sticky_piston[facing=up] run tp @s ~ ~2 ~
execute if block ~ ~ ~ minecraft:sticky_piston[facing=down] run tp @s ~ ~-2 ~

# redstone_wire
execute if block ~ ~ ~ minecraft:redstone_wire run tp @s ~ ~0.5 ~

execute if block ~ ~ ~ #powers:outputs run scale set pehkui:motion 1 @s
execute if block ~ ~ ~ #powers:outputs run scale set pehkui:height 1 @s
execute if block ~ ~ ~ #powers:outputs run kill @e[tag=prevpos]

