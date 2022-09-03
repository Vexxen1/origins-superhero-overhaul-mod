#execute if score @s hit_timer matches 1..10 run particle minecraft:block_marker minecraft:stone

execute if score @s hit_timer matches 1 run data modify entity @s Motion[0] set value 2.0d
execute if score @s hit_timer matches 1 run data modify entity @s Motion[2] set value 0.0d

execute if score @s hit_timer matches 2 run data modify entity @s Motion[0] set value 0.0d
execute if score @s hit_timer matches 2 run data modify entity @s Motion[2] set value 1.0d

execute if score @s hit_timer matches 3 run data modify entity @s Motion[0] set value -0.1111111111111d
execute if score @s hit_timer matches 3 run data modify entity @s Motion[2] set value 0.88888888888888d

execute if score @s hit_timer matches 4 run data modify entity @s Motion[0] set value -0.2222222222222d
execute if score @s hit_timer matches 4 run data modify entity @s Motion[2] set value 0.77777777777777d

execute if score @s hit_timer matches 5 run data modify entity @s Motion[0] set value -0.33333333333333d
execute if score @s hit_timer matches 5 run data modify entity @s Motion[2] set value 0.666666666666666d

execute if score @s hit_timer matches 6 run data modify entity @s Motion[0] set value -0.44444444444444d
execute if score @s hit_timer matches 6 run data modify entity @s Motion[2] set value 0.555555555555555d

execute if score @s hit_timer matches 7 run data modify entity @s Motion[0] set value -0.555555555555555d
execute if score @s hit_timer matches 7 run data modify entity @s Motion[2] set value 0.4444444444444444d

execute if score @s hit_timer matches 8 run data modify entity @s Motion[0] set value -0.666666666666666d
execute if score @s hit_timer matches 8 run data modify entity @s Motion[2] set value 0.3333333333333333d

execute if score @s hit_timer matches 9 run data modify entity @s Motion[0] set value -0.777777777777777d
execute if score @s hit_timer matches 9 run data modify entity @s Motion[2] set value 0.2222222222222222d

execute if score @s hit_timer matches 10 run data modify entity @s Motion[0] set value -0.9999999999999d
execute if score @s hit_timer matches 10 run data modify entity @s Motion[2] set value 0.11111111111111d

execute if score @s hit_timer matches 0 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 1 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 2 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 3 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 4 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 5 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 6 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 7 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 8 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 9 run data modify entity @s Motion[1] set value 0.0d
execute if score @s hit_timer matches 10 run data modify entity @s Motion[1] set value 0.0d
