tellraw @p ["",{"text":"[Your friend request too ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" has been denyed]","color":"gold"}]
tellraw @s {"text":"[Friend request denyed]","color":"gold"}

playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 2 0
playsound minecraft:block.note_block.bell voice @p ~ ~ ~ 2 0