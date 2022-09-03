
execute if score @s sd.charge matches ..3 unless score @s sd.charge matches 254.. run scoreboard players add @s sd.charge 1
execute if score @s sd.charge matches 3..254 unless score @s sd.charge matches 254.. run scoreboard players add @s sd.radius 1
execute unless score @s sd.charge matches 254.. run scoreboard players add @s sd.t 1

execute if score @s sd.charge matches 3..254 if score @s sd.radius matches 5.. run scoreboard players add @s sd.charge 1
execute if score @s sd.charge matches 3..254 if score @s sd.radius matches 5.. run scoreboard players set @s sd.radius 0

playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 2 0
effect give @s minecraft:glowing 1 0 true
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 1

execute if score @s sd.t matches 34800.. run effect give @s minecraft:slowness 1 10 true
execute if score @s sd.t matches 34800.. run effect give @s minecraft:jump_boost 1 128 true
execute if score @s sd.t matches 34800.. run particle minecraft:flash ~ ~ ~
execute if score @s sd.t matches 34800.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.25 100
execute if score @s sd.t matches 34800.. unless block ~ ~-5 ~ #powers:nonsolid run effect give @s minecraft:levitation 1 0 true
execute if score @s sd.t matches 34800.. if block ~ ~-5 ~ #powers:nonsolid run effect give @s minecraft:levitation 1 255 true
execute if score @s sd.t matches 34800.. run scale delay set pehkui:motion 0 @s
execute if score @s sd.t matches 34800.. run scale persist set pehkui:motion false @s
execute if score @s sd.t matches 34800.. if block ~ ~-5 ~ #powers:nonsolid run scale set pehkui:motion 0 @s

execute if score @s sd.charge matches 509.. run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 1

tag @s add charging

bossbar add sd.charge 2
bossbar set minecraft:sd.charge max 254

execute if score @s sd.charge matches ..127 run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"green"}
execute if score @s sd.charge matches 127..190 run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"yellow"}
execute if score @s sd.charge matches 190.. run bossbar set minecraft:sd.charge name {"text":"Explosion Power","color":"red"}

execute if score @s sd.charge matches 190.. run bossbar set minecraft:sd.charge color red
execute if score @s sd.charge matches 127..190 run bossbar set minecraft:sd.charge color yellow
execute if score @s sd.charge matches ..127 run bossbar set minecraft:sd.charge color green

execute store result bossbar minecraft:sd.charge value run scoreboard players get @s sd.charge

