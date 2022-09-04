# give player ids
execute as @a unless score @s player_id matches -2147483648..2147483647 run function powers:other/relationships/message/intro
execute as @a unless score @s player_id matches -2147483648..2147483647 run scoreboard players add G player_id 1
execute as @a unless score @s player_id matches -2147483648..2147483647 run scoreboard players set @s power_id -1
execute as @a unless score @s player_id matches -2147483648..2147483647 run scoreboard players operation @s player_id = G player_id

# update prev_power_id
execute as @a unless score @s prev_power_id matches -2147483648..2147483647 run scoreboard players set @s prev_power_id -1
execute as @a unless score @s power_id matches -1 run scoreboard players operation @s prev_power_id = @s power_id

# remove power too all that need it removed
execute as @a[tag=remove_power] run function powers:useful/power_remove

# one of a kind system
## add
tag @a remove removed_power

## timer
execute if data storage powers:one_of_a_kind data.powers_in_use[0] run function powers:one_of_a_kind/timer
execute if data storage powers:one_of_a_kind data.powers_in_use[0] as @a[tag=one_of_a_kind] at @s run function powers:one_of_a_kind/timer_reset
scoreboard players add * ooak.timer 1
execute as @a if score @s ooak.timer matches 51840000.. run tag @s add remove_power
execute as @a if score @s ooak.timer matches ..-1 run tag @s add remove_power
scoreboard players set @a ooak.timer 0

# powers everyone needs for other powers too work
power grant @a powers:glow
power grant @a powers:recipes
power grant @a powers:level

# gold freaze
execute at @e[tag=freaze] as @e[tag=freazem,tag=!new,sort=nearest,limit=1] if score @s player_id = @p player_id run tp @p @s

# power crystals
execute as @e[type=end_crystal,tag=pc.Gravity] at @s run function powers:power_crystal/gravity

execute as @e[type=end_crystal,tag=pc.Glowing] at @s run function powers:power_crystal/glowing

execute as @e[type=end_crystal,tag=pc.RedEyes] at @s run function powers:power_crystal/redeyes

execute as @a[tag=!red_eyes_disable] at @s if entity @e[type=end_crystal,tag=pc.RedEyes,scores={powerstored=1..},distance=..25] run tag @s add power_disable
execute as @a[tag=!red_eyes_disable] at @s unless entity @e[type=end_crystal,tag=pc.RedEyes,scores={powerstored=1..},distance=..25] run tag @s remove power_disable

# let go
execute as @a if score @s gravity.letgo matches 1 at @s run function powers:powers/gravity/letgo
execute as @a if score @s gravity.letgo matches 1.. run scoreboard players remove @s gravity.letgo 1

# gravity
scoreboard players set @e gravity -1
function powers:powers/gravitychanger

# personal
scale set pehkui:eye_height 0.94 Vexxen_Grey_

# stun
execute as @e[tag=stun,type=snowball] at @s run summon snowball ~ ~ ~ {Tags:["stuning"],Passengers:[{id:"minecraft:marker",Tags:["stun"]}]}
execute as @e[tag=stun,type=snowball] at @s run data modify entity @e[tag=stuning,limit=1,sort=nearest] Owner set from entity @s Owner
execute as @e[tag=stun,type=snowball] at @s run data modify entity @e[tag=stuning,limit=1,sort=nearest] Motion set from entity @s Motion
execute as @e[tag=stun,type=snowball] at @s run kill @s
execute as @e[tag=stun,type=minecraft:marker] at @s unless predicate powers:snowball run function powers:powers/stun

# projectile control
tag @s remove has_mob

execute as @a at @s run function powers:powers/projectile_control/find_target
execute as @e[type=#powers:arrows,tag=aim_arrow,tag=!targeting] run data modify entity @s NoGravity set value 0b
execute as @e[type=#powers:arrows,tag=aim_arrow,tag=!targeting] run tag @s remove aim_arrow
tag @e remove targeting

execute as @e[type=minecraft:arrow] if data entity @s {Color:16748800} at @s run function powers:powers/projectile_control/blazing_arrow_loop

# teleporter
execute as @a at @s run function powers:powers/teleporter/sl/loop


scoreboard players enable @a[tag=teleporter] waypoint_menu
scoreboard players reset @a[tag=!teleporter] waypoint_menu

tag @a remove teleporter

execute as @a if score @s waypoint_menu matches 1.. run function powers:powers/teleporter/sl/gen_list
execute as @a if score @s waypoint_menu matches 1.. run scoreboard players reset @s waypoint_menu

execute as @a if score @s waypoint_menu matches ..-1 run function powers:powers/teleporter/sl/gen_list
execute as @a if score @s waypoint_menu matches ..-1 run scoreboard players reset @s waypoint_menu


bossbar set minecraft:charge players @a[tag=charge]

# set power, and list power commands
scoreboard players enable @a[gamemode=creative] set_power
scoreboard players enable @a[gamemode=creative] list_power_ids

scoreboard players reset @a[gamemode=!creative] set_power
scoreboard players reset @a[gamemode=!creative] list_power_ids

execute as @a[gamemode=creative] if score @s set_power matches 0.. run function powers:useful/set_power
execute as @a[gamemode=creative] if score @s list_power_ids matches 1.. run function powers:useful/list_power_ids


scoreboard players set @a set_power -1
execute as @a[tag=!huge] store result score @s big_block_count run clear @s minecraft:bedrock{megablock:1} 0
execute as @a[tag=!huge] if score @s big_block_count matches 1.. run effect give @s minecraft:slowness 2 10 true

# huge
tag @a remove huge
execute as @e[type=minecraft:item,tag=!big_prossesed] if data entity @s Item.tag.big run scale set pehkui:base 5
execute as @e[type=minecraft:item,tag=!big_prossesed] run tag @s add big_prossesed


# duel weilding

execute as @a unless score @s offhand_timer matches -2147483648..2147483647 run scoreboard players set @s offhand_timer 0
execute as @a run function powers:powers/duel_weilding/bar
execute as @a unless score @s offhand_timer matches ..0 run scoreboard players remove @s offhand_timer 1

# fire breath
execute at @e[type=minecraft:snowball,tag=flame] run fill ~ ~ ~ ~ ~ ~ fire replace #powers:air

# earth bending
execute as @e[type=minecraft:armor_stand,tag=bsc_falling_A] unless data entity @s Passengers run kill @s
execute as @e[tag=dam] if entity @s[tag=dam6] at @s positioned ~ ~ ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 6
execute as @e[tag=dam] if entity @s[tag=dam6] at @s positioned ~ ~1 ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 6

execute as @e[tag=dam] if entity @s[tag=dam9] at @s positioned ~ ~ ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 9
execute as @e[tag=dam] if entity @s[tag=dam9] at @s positioned ~ ~1 ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 9

execute as @e[tag=dam] if entity @s[tag=dam12] at @s positioned ~ ~ ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 12
execute as @e[tag=dam] if entity @s[tag=dam12] at @s positioned ~ ~1 ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s damage 12

execute as @e[tag=dam] if entity @s[tag=fire] at @s positioned ~ ~ ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s fire 60
execute as @e[tag=dam] if entity @s[tag=fire] at @s positioned ~ ~1 ~ as @e[distance=0.01..2,type=#powers:arrow_targets,type=!armor_stand,tag=!nodam] unless score @s player_id = @e[tag=dam,limit=1,sort=nearest] player_id_con run scoreboard players set @s fire 60

execute as @e[tag=nodam] at @s unless entity @e[tag=dam,distance=..3] run tag @s remove nodam

execute as @e[type=armor_stand,tag=pu,tag=!no] at @s run power grant @e[tag=!pu,distance=..1] powers:powers/earth_bending/launch
execute as @e[type=armor_stand,tag=pu] run scoreboard players add @s cal2 1
execute as @e[type=armor_stand,tag=pu] at @s if score @s cal2 matches 9.. run function powers:powers/earth_bending/lock

# dynamic damage and fire applyer
execute as @e[type=!player] if score @s damage matches 1.. run function powers:useful/entity_damage
execute as @e[type=player] if score @s damage matches 1.. run power grant @s powers:damage_basic
execute as @e if score @s damage matches ..-1 run power grant @s powers:heal
execute as @e if score @s fire matches 1.. run power grant @s powers:fire

# crafting master
execute as @a[tag=!recipes,tag=!recipes2] run function powers:other/recipes
execute as @a[tag=recipes2] run function powers:other/recipes2

execute as @a if data entity @s SelectedItem.tag.animal_crystal run power grant @s powers:other/animal_crystal
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.animal_crystal run power grant @s powers:other/animal_crystal
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.animal_crystal unless data entity @s SelectedItem.tag.animal_crystal run power revoke @s powers:other/animal_crystal


execute as @a if data entity @s SelectedItem.tag.throwable_tnt run power grant @s powers:other/throwable_tnt
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.throwable_tnt run power grant @s powers:other/throwable_tnt
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.throwable_tnt unless data entity @s SelectedItem.tag.throwable_tnt run power revoke @s powers:other/throwable_tnt

execute as @e[type=tnt,tag=throwable_tnt] at @s run function powers:other/tnt/throwable_tnt

execute as @a if data entity @s SelectedItem.tag.sticky_tnt run power grant @s powers:other/sticky_tnt
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.sticky_tnt run power grant @s powers:other/sticky_tnt
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.sticky_tnt unless data entity @s SelectedItem.tag.sticky_tnt run power revoke @s powers:other/sticky_tnt

execute as @e[type=tnt,tag=sticky_tnt] at @s run function powers:other/tnt/sticky_tnt

execute as @a if data entity @s SelectedItem.tag.trigger_tnt run power grant @s powers:other/trigger_tnt
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.trigger_tnt run power grant @s powers:other/trigger_tnt
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.trigger_tnt unless data entity @s SelectedItem.tag.trigger_tnt run power revoke @s powers:other/trigger_tnt


execute as @e[type=tnt,tag=trigger_tnt] at @s run function powers:other/tnt/trigger_tnt

execute as @a if data entity @s SelectedItem.tag.trigger_tnt_detonator run power grant @s powers:other/trigger_tnt_detonator
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.trigger_tnt_detonator run power grant @s powers:other/trigger_tnt_detonator
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.trigger_tnt_detonator unless data entity @s SelectedItem.tag.trigger_tnt_detonator run power revoke @s powers:other/trigger_tnt_detonator

execute as @a if data entity @s SelectedItem.tag.sticky_trigger_tnt run power grant @s powers:other/sticky_trigger_tnt
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.sticky_trigger_tnt run power grant @s powers:other/sticky_trigger_tnt
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.sticky_trigger_tnt unless data entity @s SelectedItem.tag.sticky_trigger_tnt run power revoke @s powers:other/sticky_trigger_tnt

execute as @a if data entity @s SelectedItem.tag.ender_link run power grant @s powers:other/ender_link
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.ender_link run power grant @s powers:other/ender_link
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.ender_link unless data entity @s SelectedItem.tag.ender_link run power revoke @s powers:other/ender_link

execute as @a if data entity @s SelectedItem.tag.ender_trigger run power grant @s powers:other/ender_trigger
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.ender_trigger run power grant @s powers:other/ender_trigger
execute as @a unless data entity @s Inventory[{Slot: -106b}].tag.ender_trigger unless data entity @s SelectedItem.tag.ender_trigger run power revoke @s powers:other/ender_trigger


execute as @e[type=marker,tag=ender_link] at @s run function powers:other/ender_link/loop

execute if score @s ender_link_id_in matches 1.. run scoreboard players remove @a ender_link_id_in 1

# sacrafice
power revoke @e[tag=!damage_take] powers:powers/sacrafice_friend
tag @e remove damage_take

# self-destruction
execute if entity @e[type=marker,tag=nuke_ray] run gamerule doTileDrops false
execute unless entity @e[type=marker,tag=nuke_ray] run gamerule doTileDrops true

execute unless entity @e[type=marker,tag=nuke_ray] as @a[tag=no_nuke,gamemode=!creative,gamemode=!spectator] run kill @s
execute unless entity @e[type=marker,tag=nuke_ray] as @a[tag=no_nuke,gamemode=creative] run scale reset pehkui:motion
execute unless entity @e[type=marker,tag=nuke_ray] as @a[tag=no_nuke,gamemode=spectator] run scale reset pehkui:motion

execute unless entity @e[type=marker,tag=nuke_ray] as @a[tag=no_nuke] run tag @s remove no_nuke

execute as @e[type=marker,tag=nuke_ray] at @s run function powers:powers/self-destruction/nuke/explosion_ray

execute as @e[type=marker,tag=nuke] at @s run function powers:powers/self-destruction/nuke/particals

bossbar set minecraft:sd.charge players @a[scores={sd.charge=1..}]

execute at @e[type=minecraft:shulker,tag=shield] run particle minecraft:dust 1 0 0 1 ~ ~0.5 ~ 0.25 0.25 0.25 1 1 normal @a 
execute as @e[type=minecraft:shulker,tag=shield] at @s unless entity @a[distance=..25] run kill @s

# gamerules

scoreboard players enable @a[gamemode=creative] SOO_gamerules
scoreboard players reset @a[gamemode=!creative] SOO_gamerules


execute as @a at @s if score @s SOO_gamerules matches 1.. run function powers:other/gamerules/gamerules
function powers:other/gamerules/gamerules_loop

# telekinesis
execute as @e[type=marker,tag=orb] at @s run function powers:powers/telekinesis/orb_loop

# power disable
execute as @a[tag=!power_disable2] at @s run tag @s remove power_disable3
execute as @a[tag=power_disable] at @s run power grant @s powers:powers/power_disable/disable
execute as @a[tag=power_disable] at @s run tag @s add power_disable2
execute as @a[tag=power_disable] at @s run tag @s add power_disable3
execute as @a[tag=!power_disable] at @s run power revoke @s powers:powers/power_disable/disable
execute as @a[tag=!power_disable] at @s run tag @s remove power_disable2

# reset power

scoreboard players enable @a[gamemode=creative] reset_power
scoreboard players reset @a[gamemode=!creative] reset_power

execute as @a at @s if score @s reset_power matches 1.. run scoreboard players operation in cal1 = @s reset_power
execute as @a at @s if score @s reset_power matches 1.. run function powers:one_of_a_kind/sremove

execute as @a at @s if score @s reset_power matches ..-1 run scoreboard players operation in cal1 = @s reset_power
execute as @a at @s if score @s reset_power matches ..-1 run function powers:one_of_a_kind/sremove

scoreboard players set @a reset_power 0

# reset one of a kind

scoreboard players enable @a[gamemode=creative] reset_one_of_a_kind
scoreboard players reset @a[gamemode=!creative] reset_one_of_a_kind

execute as @a at @s if score @s reset_one_of_a_kind matches 1.. run data remove storage powers:one_of_a_kind data

scoreboard players set @a reset_one_of_a_kind 0

# give chests

scoreboard players enable @a[gamemode=creative] give_custom_items
scoreboard players reset @a[gamemode=!creative] give_custom_items

execute as @a at @s if score @s give_custom_items matches 1.. run function powers:useful/give

scoreboard players set @a give_custom_items 0

clear @a[gamemode=!creative] minecraft:chest{co:1}
