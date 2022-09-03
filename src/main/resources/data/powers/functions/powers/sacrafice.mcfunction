
power grant @e[tag=friend,distance=..32] powers:powers/sacrafice_friend
power revoke @e[tag=!friend,distance=..32] powers:powers/sacrafice_friend

tag @a[distance=..32] add damage_take

scoreboard players operation @s damage += @e[tag=friend,distance=..32] damage_taken
scoreboard players set @e[tag=friend,distance=..32] damage_taken 0
