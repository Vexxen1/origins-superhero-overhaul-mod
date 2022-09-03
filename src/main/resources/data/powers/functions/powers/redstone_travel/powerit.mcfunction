tag @s remove overworld
tag @s remove the_end
tag @s remove the_nether

execute if data entity @s {Dimension: "minecraft:the_end"} run tag @s add the_end
execute if data entity @s {Dimension: "minecraft:the_nether"} run tag @s add the_nether
execute if data entity @s {Dimension: "minecraft:overworld"} run tag @s add overworld

execute if entity @s[tag=overworld] run clone ~ ~ ~ ~ ~ ~ ~ -64 ~
execute if entity @s[tag=!overworld] run clone ~ ~ ~ ~ ~ ~ ~ 0 ~

setblock ~ ~ ~ minecraft:redstone_block
setblock ~ ~ ~ air

execute if entity @s[tag=overworld] run clone ~ -64 ~ ~ -64 ~ ~ ~ ~
execute if entity @s[tag=!overworld] run clone ~ 0 ~ ~ 0 ~ ~ ~ ~

execute if entity @s[tag=overworld] run setblock ~ -64 ~ bedrock
execute if entity @s[tag=the_nether] run setblock ~ 0 ~ bedrock
execute if entity @s[tag=the_end] run setblock ~ 0 ~ air

