
execute if entity @s[tag=replacem] run execute store result score @s datatransfur run data get storage powers:temp mcount
execute if entity @s[tag=replacem] run item modify entity @s weapon.mainhand powers:copym
execute if entity @s[tag=replacem] run tag @s remove replacem
