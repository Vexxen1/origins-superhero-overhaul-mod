tag @s remove forward
tag @s remove backwards
tag @s remove left
tag @s remove right
tag @s remove jump
tag @s remove crouch

execute if entity @s[tag=!primary] run tag @s remove used_primary
tag @s remove primary

execute if entity @s[tag=!secondary] run tag @s remove used_secondary
tag @s remove secondary


execute if entity @s[tag=!load] run tag @s remove used_load
tag @s remove load

execute if entity @s[tag=!save] run tag @s remove used_save
tag @s remove save

execute if entity @s[tag=!spectator] run tag @s remove used_spectator
tag @s remove spectator

tag @s remove hit

tag @s remove ok
execute if entity @s[tag=teleported2] run effect clear @s slow_falling
execute if entity @s[tag=teleported2] run tag @s remove teleported2
execute if entity @s[tag=teleported] run tag @s add teleported2
execute if entity @s[tag=teleported] run tag @s remove teleported

execute unless entity @s[tag=has_waypoint_marker] run function powers:powers/teleporter/sl/init


tag @s add teleporter


execute store result bossbar minecraft:charge value run scoreboard players get @s charge

execute if score @s charge matches ..150 run bossbar set minecraft:charge color green
execute if score @s charge matches ..150 run bossbar set minecraft:charge name {"text":"Charge","color":"green"}

execute if score @s charge matches 150..225 run bossbar set minecraft:charge color yellow
execute if score @s charge matches 150..225 run bossbar set minecraft:charge name {"text":"Charge","color":"yellow"}
execute if score @s charge matches 225.. run bossbar set minecraft:charge color red
execute if score @s charge matches 225.. run bossbar set minecraft:charge name {"text":"Charge","color":"red"}
tag @s remove charge
execute if score @s charge matches 1.. run tag @s add charge
execute if score @s charge matches 1.. unless entity @s[tag=charging] run scoreboard players remove @s charge 5

execute if score @s charge matches ..-1 run scoreboard players add @s charge 1

execute if entity @s[tag=charging2] run tag @s remove charging
execute if entity @s[tag=charging2] run tag @s remove charging2
execute if entity @s[tag=charging] run tag @s add charging2