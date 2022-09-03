scoreboard players operation @s power_id = @s set_power
power grant @s powers:playstyles/set
scoreboard players reset @s set_power
tellraw @s {"text":"Set Power Successfully"}
