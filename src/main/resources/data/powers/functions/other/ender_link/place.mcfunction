summon marker ~ ~ ~ {Tags:["ender_link"]}
setblock ~ ~ ~ minecraft:sculk_sensor[power=0,sculk_sensor_phase=cooldown]
scoreboard players add G ender_link_id_in 1
scoreboard players operation @e[tag=ender_link,tag=!done] ender_link_id_in = G ender_link_id_in


execute if data entity @s Inventory[{Slot: -106b}].tag.link store result score @e[tag=ender_link,tag=!done] ender_link_id_out run data get entity @s Inventory[{Slot: -106b}].tag.link
execute if data entity @s SelectedItem.tag.link store result score @e[tag=ender_link,tag=!done] ender_link_id_out run data get entity @s SelectedItem.tag.link

execute as @e[tag=ender_link,tag=done] if score @s ender_link_id_in = @e[tag=ender_link,tag=!done,limit=1] ender_link_id_out run scoreboard players operation @s ender_link_id_out = @e[tag=ender_link,tag=!done,limit=1] ender_link_id_in

tag @e[tag=ender_link,tag=!done] add done
playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~
