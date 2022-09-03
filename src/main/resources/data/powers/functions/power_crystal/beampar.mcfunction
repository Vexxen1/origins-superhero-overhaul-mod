execute facing entity @s feet run particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.3 1
execute facing entity @s feet positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function powers:power_crystal/beampar
