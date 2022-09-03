summon creeper ~ ~ ~ {NoGravity:1b,powered:1b,Fuse:1,ignited:1b}
execute if score @s sd.charge matches 509.. run scoreboard players set @s power 0
execute if score @s sd.charge matches 509.. run origin set @s powers:powers powers:none
scoreboard players set @s sd.charge 0
scoreboard players set @s sd.radius 0
scoreboard players set @s sd.t 0
