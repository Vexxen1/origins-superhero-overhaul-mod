execute if data entity @p SelectedItem.tag.animal_crystal if data entity @p SelectedItem.tag.animal run tag @p add out

execute if entity @p[tag=out] run function powers:other/animal_orb/data_too_mob

execute if entity @p[tag=out] run execute as @p run item replace entity @s weapon.mainhand with minecraft:shulker_box{display:{Name:'{"text":"Animal Box","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},animal_crystal:1}

tag @p remove out

execute at @p run playsound minecraft:block.shulker_box.close player @a ~ ~ ~