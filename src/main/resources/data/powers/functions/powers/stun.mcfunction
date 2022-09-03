kill @s
particle minecraft:flash ~ ~ ~ 0 0 0 1 100
power grant @a[distance=..4] powers:powers/stun/stunedp
execute as @e[type=!minecraft:player,distance=..4] run power grant @s powers:powers/stun/stuned
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25