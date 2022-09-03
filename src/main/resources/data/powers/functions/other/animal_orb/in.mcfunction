execute if entity @s[type=#powers:animal] if data entity @p SelectedItem.tag.animal_crystal unless data entity @p SelectedItem.tag.animal run tag @p add store


team add no_death_message
team modify no_death_message deathMessageVisibility never
team join no_death_message @s

execute if entity @p[tag=store] run function powers:other/animal_orb/mob_too_data

tag @e remove copy_name
tag @s add copy_name

execute if entity @p[tag=store] run execute as @p run item modify entity @s weapon.mainhand powers:animal_orb/desc
execute if entity @p[tag=store] at @s run tp @s ~ -999 ~
execute if entity @p[tag=store] at @s run kill @s

execute if entity @p[tag=store] run execute as @p run item modify entity @s weapon.mainhand powers:animal_orb/store

tag @p remove store

execute at @p run playsound minecraft:block.shulker_box.open player @a ~ ~ ~
