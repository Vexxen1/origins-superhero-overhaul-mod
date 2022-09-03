
execute unless score @s charge matches 300.. run scoreboard players add @s charge 1
bossbar add charge {"text":"Charge","color":"gold"}
bossbar set minecraft:charge max 300
bossbar set minecraft:charge visible true

tag @s add self
execute rotated as @s rotated ~ 0 positioned ^-0.4 ^ ^-0.2 run particle minecraft:dust 0 0.949 1 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 1 normal @a[tag=!self]
execute rotated as @s rotated ~ 0 positioned ^0.4 ^ ^-0.2 run particle minecraft:dust 0 0.949 1 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 1 normal @a[tag=!self]

execute rotated as @s anchored eyes positioned ^-0.3 ^-0.2 ^0.5 run particle minecraft:dust 0 0.949 1 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal @a[tag=self]

execute if score @s charge matches 1..299 run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.1 2
execute if score @s charge matches 150 run particle minecraft:flash
execute if score @s charge matches 150 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 187 run particle minecraft:flash
execute if score @s charge matches 187 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 220 run particle minecraft:flash
execute if score @s charge matches 220 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 230 run particle minecraft:flash
execute if score @s charge matches 230 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 240 run particle minecraft:flash
execute if score @s charge matches 240 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 250 run particle minecraft:flash
execute if score @s charge matches 250 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 260 run particle minecraft:flash
execute if score @s charge matches 260 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 262..299 run particle minecraft:flash
execute if score @s charge matches 262..299 run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 2
execute if score @s charge matches 299 run playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~
execute if score @s charge matches 299 run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s charge matches 299 run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,ExplosionRadius:5b,Fuse:2,ignited:1b,Tags:["notp"]}
execute if score @s charge matches 299 run power grant @s powers:powers/teleporter/random_tp
execute if score @s charge matches 299 run effect give @s minecraft:weakness 120 9 true
execute if score @s charge matches 299 run effect give @s minecraft:slowness 120 1 true
execute if score @s charge matches 300 run scoreboard players set @s charge -24000
tag @s add charging

tag @s remove self

