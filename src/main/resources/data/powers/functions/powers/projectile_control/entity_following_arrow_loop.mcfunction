# loops every tick for a arrow following a mob
## remove entity if entity has been hit, and select another random entity
data merge entity @s {NoGravity:1b}

### transfur hit too eazy too read place
execute if entity @e[tag=hit,tag=at] run tag @s add hit
execute if entity @e[tag=hit,tag=at] run tag @e[tag=hit,tag=at] remove hit

### resummon arrow
execute at @s if entity @s[type=arrow,tag=hit] run summon arrow ~ ~ ~ {Tags:["replaceA"]}
execute at @s if entity @s[type=spectral_arrow,tag=hit] run summon spectral_arrow ~ ~ ~ {Tags:["replaceA"]}
execute at @s if entity @s[type=trident,tag=hit] run scoreboard players set @s in_ground 1

execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Motion set from entity @s Motion
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] damage set from entity @s damage
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Owner set from entity @s Owner
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Color set from entity @s Color
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] shake set from entity @s shake
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] pickup set from entity @s pickup
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] SoundEvent set from entity @s SoundEvent
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replacea,limit=1] crit set from entity @s crit
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Pos set from entity @s Pos
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Fire set from entity @s Fire
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Potion set from entity @s Potion
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] ShotFromCrossbow set from entity @s ShotFromCrossbow

### remove 1 from PierceLevel
execute if entity @e[tag=replaceA] run execute store result score Temp num run data get entity @s PierceLevel
execute if entity @e[tag=replaceA] unless score Temp num matches 127 run scoreboard players remove Temp num 1
execute if entity @e[tag=replaceA] run execute store result entity @s PierceLevel int 1 run scoreboard players get Temp num
scoreboard players set @e[tag=replaceA] hit_timer 0
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] PierceLevel set from entity @s PierceLevel
execute if entity @e[tag=replaceA] run scoreboard players operation @e[tag=replaceA,limit=1] arrow_link = @s arrow_link
execute if entity @e[tag=replaceA] run data modify entity @e[tag=replaceA,limit=1] Tags set from entity @s Tags

execute if entity @s[tag=hit,type=!trident] run kill @s
tag @e[tag=as,tag=hit,type=!trident] add hitT
tag @e[tag=as,type=!trident] remove hit

## hit timer
execute as @e[tag=as,tag=hitT] run scoreboard players add @s hit_timer 1
execute as @e[tag=as,tag=hitT] at @s run function powers:powers/projectile_control/rehit_animation
execute as @e[tag=as,tag=hitT] if score @s hit_timer matches 10.. run tag @e[tag=as] remove hitT
execute as @e[tag=as] if score @s hit_timer matches 10.. run scoreboard players reset @s hit_timer

## summon marker too move twords, and display debug particals

kill @e[tag=pos]
execute at @s as @e[tag=at] if entity @s facing entity @s eyes run particle minecraft:dust 1 0 0 1 ^ ^ ^5 0 0 0 1 1 normal @a[tag=debug]

execute at @s as @e[tag=at] if entity @s[type=!ender_dragon] facing entity @s eyes run summon marker ^ ^ ^10 {Tags:["pos"]}

execute at @s as @e[tag=at] if entity @s[type=ender_dragon] at @s run summon marker ~ ~2 ~ {Tags:["temp"]}
execute at @s as @e[tag=at] if entity @s[type=ender_dragon] facing entity @e[tag=temp] eyes run summon marker ^ ^ ^10 {Tags:["pos"]}

kill @e[tag=temp]

## get distance between arrow and marker
execute as @e[tag=as] as @s at @e[tag=pos] run function powers:useful/distance

## initiate values

scoreboard players set x1 x 0
scoreboard players set y1 y 0
scoreboard players set z1 z 0
## get current motion
execute as @e[tag=as] store result score x1 x run data get entity @s Motion[0] 10
execute as @e[tag=as] store result score y1 y run data get entity @s Motion[1] 10
execute as @e[tag=as] store result score z1 z run data get entity @s Motion[2] 10

## calculate new motion

scoreboard players operation xd x -= x1 x
scoreboard players operation yd y -= y1 y
scoreboard players operation zd z -= z1 z

scoreboard players operation xd x /= 3 num
scoreboard players operation yd y /= 3 num
scoreboard players operation zd z /= 3 num

#scoreboard players operation yd y -= 2 num

scoreboard players operation x1 x += xd x
scoreboard players operation y1 y += yd y
scoreboard players operation z1 z += zd z

## store motion
execute as @e[tag=as] unless data entity @s {DealtDamage:1b} unless entity @s[tag=hit] unless entity @s[tag=hitT] store result entity @s Motion[0] double 0.05 run scoreboard players get x1 x
execute as @e[tag=as] unless data entity @s {DealtDamage:1b} unless entity @s[tag=hit] unless entity @s[tag=hitT] store result entity @s Motion[1] double 0.05 run scoreboard players get y1 y
execute as @e[tag=as] unless data entity @s {DealtDamage:1b} unless entity @s[tag=hit] unless entity @s[tag=hitT] store result entity @s Motion[2] double 0.05 run scoreboard players get z1 z

## end
kill @e[tag=pos]
tag @e[tag=as,limit=1] remove as
tag @e[tag=at,limit=1] remove at
