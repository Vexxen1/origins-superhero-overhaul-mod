particle minecraft:flame ~ ~ ~ 0 0 0 0.01 1 force
data merge entity @s {damage:12d,PierceLevel:127b,SoundEvent:"entity.blaze.shoot"}

execute if data entity @s[tag=!tnt] {inGround:1b} run summon tnt ~ ~ ~ {Fuse:0}
execute if data entity @s[tag=!tnt] {inGround:1b} run tag @s add tnt

execute if block ~ ~ ~ #powers:water[waterlogged=true] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~
execute if block ~ ~ ~ water run playsound minecraft:block.fire.extinguish player @a ~ ~ ~

execute if block ~ ~ ~ #powers:water[waterlogged=true] run kill @s
execute if block ~ ~ ~ water run kill @s
