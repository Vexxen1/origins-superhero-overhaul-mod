

execute if entity @s[tag=out] unless score @s teledis matches 30.. run scoreboard players add @s teledis 1
execute if entity @s[tag=in] unless score @s teledis matches ..5 run scoreboard players remove @s teledis 1


scoreboard players operation T teledis = @s teledis
kill @e[tag=orb]
execute at @s run summon marker ~ ~ ~ {Tags:["orb"]}
execute at @s anchored eyes rotated as @s run function powers:powers/telekinesis/summon_orb

tag @s remove pickup
tag @s remove out
tag @s remove in