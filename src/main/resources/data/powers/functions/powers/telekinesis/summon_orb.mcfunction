
tp @e[tag=orb] ~ ~ ~
scoreboard players remove T teledis 1
execute unless score T teledis matches ..0 positioned ^ ^ ^1 run function powers:powers/telekinesis/summon_orb
