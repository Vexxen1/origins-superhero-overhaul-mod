execute at @e[tag=linkedT] as @e[type=#powers:arrows,tag=linked] if score @s arrow_link = @e[distance=..0.01,limit=1,sort=nearest] arrow_link run function powers:powers/projectile_control/reset
