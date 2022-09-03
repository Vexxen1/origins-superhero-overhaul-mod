execute as @p if block ~ ~2 ~ #powers:nonsolid if block ~ ~1 ~ #powers:nonsolid if block ~ ~ ~ #powers:earth_bending/earth if block ~ ~-1 ~ #powers:earth_bending/earth if block ~ ~-2 ~ #powers:earth_bending/earth if block ~ ~-3 ~ #powers:earth_bending/earth run tag @s add G
execute as @p unless block ~ ~-3 ~1 #powers:earth_bending/earth unless block ~ ~-3 ~-1 #powers:earth_bending/earth unless block ~1 ~-3 ~ #powers:earth_bending/earth unless block ~-1 ~-3 ~ #powers:earth_bending/earth run tag @s remove G

execute as @p if entity @s[tag=G] positioned ~ ~ ~ run function powers:powers/earth_bending/convert_too_falling
execute as @p if entity @s[tag=G] as @e[tag=bsc_falling_A,tag=!done] unless score @s cal1 matches -2147483648..2147483647 run scoreboard players operation @s cal1 = block bsc
execute as @p if entity @s[tag=G] positioned ~ ~-1 ~ run function powers:powers/earth_bending/convert_too_falling
execute as @p if entity @s[tag=G] as @e[tag=bsc_falling_A,tag=!done] unless score @s cal1 matches -2147483648..2147483647 run scoreboard players operation @s cal1 = block bsc
execute as @p if entity @s[tag=G] positioned ~ ~-2 ~ run function powers:powers/earth_bending/convert_too_falling
execute as @p if entity @s[tag=G] as @e[tag=bsc_falling_A,tag=!done] unless score @s cal1 matches -2147483648..2147483647 run scoreboard players operation @s cal1 = block bsc
execute as @p if entity @s[tag=G] positioned ~ ~-3 ~ run function powers:powers/earth_bending/convert_too_falling
execute as @p if entity @s[tag=G] as @e[tag=bsc_falling_A,tag=!done] unless score @s cal1 matches -2147483648..2147483647 run scoreboard players operation @s cal1 = block bsc


execute as @p if entity @s[tag=G] positioned ~ ~ ~ run execute as @e[tag=bsc_falling_A,tag=!done] run data modify entity @s Motion[1] set value 0.6d

execute as @p if entity @s[tag=G] positioned ~ ~ ~ run execute as @e[tag=bsc_falling_A,tag=!done] run tag @s add pu
execute as @p if entity @s[tag=G] positioned ~ ~ ~ run execute as @e[tag=bsc_falling,tag=!pub] run tag @s add pub
execute as @p if entity @s[tag=G] positioned ~ ~ ~ run execute as @e[tag=bsc_falling_A,tag=!done] run tag @s add done

execute as @p if entity @s[tag=G] run playsound minecraft:entity.horse.breathe block @a[distance=8] ~ ~ ~ 2 1 1
execute as @p if entity @s[tag=G] run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 2 1

tag @p remove G
