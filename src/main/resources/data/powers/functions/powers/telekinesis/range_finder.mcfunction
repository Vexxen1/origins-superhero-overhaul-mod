scoreboard players set R cal5 600
execute at @s run summon marker ~ ~ ~ {Tags:["range_finder"]}
tag @s add self
execute as @e[tag=self] at @s positioned ~ ~2 ~ rotated as @s as @e[tag=range_finder] run function powers:powers/telekinesis/range_loop
tag @s remove self
kill @e[tag=range_finder]

scoreboard players remove R cal5 600
scoreboard players operation T cal5 = R cal5
scoreboard players operation distance cal5 = R cal5
scoreboard players operation distance cal5 -= T cal5
scoreboard players operation distance cal5 -= T cal5
scoreboard players operation distance cal5 /= 2 num
scoreboard players reset T cal5
scoreboard players reset R cal5
