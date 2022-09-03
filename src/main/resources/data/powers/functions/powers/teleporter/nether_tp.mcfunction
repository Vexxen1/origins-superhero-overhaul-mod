
execute if block ~ ~ ~ #powers:safe if block ~ ~1 ~ #powers:safe unless block ~ ~-1 ~ #powers:nonsolid run tag @s add ok
execute if block ~ ~ ~ #powers:safe if block ~ ~1 ~ #powers:safe unless block ~ ~-1 ~ #powers:nonsolid run tp @s ~ ~ ~

execute positioned ~ ~-1 ~ unless entity @s[distance=130..] unless entity @s[tag=ok] run function powers:powers/teleporter/nether_tp
