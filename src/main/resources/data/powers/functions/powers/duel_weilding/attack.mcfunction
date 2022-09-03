
# get damage
execute store result score Dam num run attribute @e[tag=testdam,limit=1] minecraft:generic.attack_damage get
kill @e[tag=testdam]

execute if entity @s[tag=crit] run scoreboard players operation Dam num *= 10 num
execute if entity @s[tag=crit] run scoreboard players operation Dam num *= 5 num
execute if entity @s[tag=crit] run scoreboard players operation Dam num /= 100 num

scoreboard players operation T Poffhand_timer = @a[tag=self,limit=1,sort=nearest] Poffhand_timer
scoreboard players operation T Poffhand_timer -= @a[tag=self,limit=1,sort=nearest] offhand_timer
scoreboard players operation T Poffhand_timer *= 100 num
scoreboard players operation T Poffhand_timer /= @a[tag=self,limit=1,sort=nearest] Poffhand_timer

resource operation @a[tag=self,limit=1,sort=nearest] powers:powers/duel_weiding_offhand = T Poffhand_timer

execute unless score @s offhand_timer matches 0 run scoreboard players operation Dam num *= 100 num
execute unless score @s offhand_timer matches 0 run scoreboard players operation Dam num *= T Poffhand_timer
execute unless score @s offhand_timer matches 0 run scoreboard players operation Dam num /= 10000 num

execute if entity @s[tag=crit] run particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 1 5 normal

# fire
execute store result score @s fire run data get storage powers:attack item.tag.Enchantments[{id: "minecraft:fire_aspect"}].lvl
scoreboard players operation @s fire *= 80 num

# sharpness
execute store result score sharpness num run data get storage powers:attack item.tag.Enchantments[{id: "minecraft:sharpness"}].lvl
scoreboard players operation Dam num += sharpness num

# smite
execute store result score smite num run data get storage powers:attack item.tag.Enchantments[{id: "minecraft:smite"}].lvl
scoreboard players operation smite num *= 2 num
execute if entity @s[tag=undead] run scoreboard players operation Dam num += smite num

# inpailing
execute store result score impaling num run data get storage powers:attack item.tag.Enchantments[{id: "minecraft:impaling"}].lvl
scoreboard players operation impaling num *= 2 num
execute if entity @s[tag=aquatic] run scoreboard players operation Dam num += impaling num

# bane_of_arthropods
execute store result score bane_of_arthropods num run data get storage powers:attack item.tag.Enchantments[{id: "minecraft:bane_of_arthropods"}].lvl
scoreboard players operation bane_of_arthropods num *= 2 num
execute if entity @s[tag=arthropod] run scoreboard players operation Dam num += bane_of_arthropods num

scoreboard players operation @s damage += Dam num

# end
tag @e remove self

function powers:powers/duel_weilding/partical_loop

forceload remove 0 0
tag @s remove undead
tag @s remove arthropod
tag @s remove aquatic