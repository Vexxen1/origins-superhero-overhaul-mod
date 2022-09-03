
scoreboard players set @s cal1 0
execute if block ^ ^ ^0.5 #powers:replaceable if score @s cal1 matches 0 run scoreboard players set @s cal1 1
execute if block ^ ^ ^1 #powers:replaceable if score @s cal1 matches 1 run scoreboard players set @s cal1 2
execute if block ^ ^ ^1.5 #powers:replaceable if score @s cal1 matches 2 run scoreboard players set @s cal1 3
execute if block ^ ^ ^2 #powers:replaceable if score @s cal1 matches 3 run scoreboard players set @s cal1 4
execute if block ^ ^ ^2.5 #powers:replaceable if score @s cal1 matches 4 run scoreboard players set @s cal1 5
execute if block ^ ^ ^3 #powers:replaceable if score @s cal1 matches 5 run scoreboard players set @s cal1 6
execute if block ^ ^ ^3.5 #powers:replaceable if score @s cal1 matches 6 run scoreboard players set @s cal1 7
execute if block ^ ^ ^4 #powers:replaceable if score @s cal1 matches 7 run scoreboard players set @s cal1 8
execute if block ^ ^ ^4.5 #powers:replaceable if score @s cal1 matches 8 run scoreboard players set @s cal1 9
execute if block ^ ^ ^5 #powers:replaceable if score @s cal1 matches 9 run scoreboard players set @s cal1 10
execute if block ^ ^ ^5.5 #powers:replaceable if score @s cal1 matches 10 run scoreboard players set @s cal1 -1

execute if score @s cal1 matches 1.. run tag @a remove no_place


execute if score @s cal1 matches 1 positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 2 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 3 positioned ^ ^ ^1.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 4 positioned ^ ^ ^2 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 5 positioned ^ ^ ^2.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 6 positioned ^ ^ ^3 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 7 positioned ^ ^ ^3.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 8 positioned ^ ^ ^4 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
execute if score @s cal1 matches 9 positioned ^ ^ ^4.5 align xyz positioned ~0.5 ~ ~0.5 run function powers:other/ender_link/place
