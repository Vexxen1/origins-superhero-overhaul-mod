execute if entity @s[type=minecraft:zombie_horse] run scoreboard players set MobID cal1 1
execute if entity @s[type=minecraft:wolf] run scoreboard players set MobID cal1 2
execute if entity @s[type=minecraft:trader_llama] run scoreboard players set MobID cal1 3
execute if entity @s[type=minecraft:skeleton_horse] run scoreboard players set MobID cal1 4
execute if entity @s[type=minecraft:parrot] run scoreboard players set MobID cal1 5
execute if entity @s[type=minecraft:mule] run scoreboard players set MobID cal1 6
execute if entity @s[type=minecraft:llama] run scoreboard players set MobID cal1 7
execute if entity @s[type=minecraft:horse] run scoreboard players set MobID cal1 8
execute if entity @s[type=minecraft:fox] run scoreboard players set MobID cal1 9
execute if entity @s[type=minecraft:donkey] run scoreboard players set MobID cal1 10
execute if entity @s[type=minecraft:cat] run scoreboard players set MobID cal1 11
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players set MobID cal1 12
execute if entity @s[type=minecraft:strider] run scoreboard players set MobID cal1 13
execute if entity @s[type=minecraft:squid] run scoreboard players set MobID cal1 14
execute if entity @s[type=minecraft:sheep] run scoreboard players set MobID cal1 15
execute if entity @s[type=minecraft:salmon] run scoreboard players set MobID cal1 16
execute if entity @s[type=minecraft:rabbit] run scoreboard players set MobID cal1 17
execute if entity @s[type=minecraft:pufferfish] run scoreboard players set MobID cal1 18
execute if entity @s[type=minecraft:polar_bear] run scoreboard players set MobID cal1 19
execute if entity @s[type=minecraft:pig] run scoreboard players set MobID cal1 20
execute if entity @s[type=minecraft:panda] run scoreboard players set MobID cal1 21
execute if entity @s[type=minecraft:ocelot] run scoreboard players set MobID cal1 22
execute if entity @s[type=minecraft:mooshroom] run scoreboard players set MobID cal1 23
execute if entity @s[type=minecraft:cow] run scoreboard players set MobID cal1 24
execute if entity @s[type=minecraft:cod] run scoreboard players set MobID cal1 25
execute if entity @s[type=minecraft:chicken] run scoreboard players set MobID cal1 26
execute if entity @s[type=minecraft:bee] run scoreboard players set MobID cal1 27
execute if entity @s[type=minecraft:bat] run scoreboard players set MobID cal1 28
execute if entity @s[type=minecraft:glow_squid] run scoreboard players set MobID cal1 29

execute store result storage powers:mob temp.animal.id int 1 run scoreboard players get MobID cal1

# 
data modify storage powers:mob temp.animal.data set from entity @s

