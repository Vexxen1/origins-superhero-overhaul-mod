# link at, and as
## link
execute unless score @e[distance=..0.01,limit=1,sort=nearest] arrow_link matches -2147483648..2147483647 run scoreboard players add G arrow_link 1
execute unless score @e[distance=..0.01,limit=1,sort=nearest] arrow_link matches -2147483648..2147483647 run scoreboard players operation @e[distance=..0.01,limit=1,sort=nearest] arrow_link = G arrow_link
scoreboard players operation @s arrow_link = @e[distance=..0.01,limit=1,sort=nearest] arrow_link

## change at tags
tag @e[distance=..0.01,limit=1,sort=nearest] add linkedT
tag @e[distance=..0.01,limit=1,sort=nearest] remove aim_target

## change as tags
tag @s add linked