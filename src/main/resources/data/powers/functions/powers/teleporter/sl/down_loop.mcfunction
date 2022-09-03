data modify entity @s data.Waypoints append from entity @s data.Waypoints[0]
data remove entity @s data.Waypoints[0]
scoreboard players remove Count num 1

execute unless score Count num matches ..1 run function powers:powers/teleporter/sl/down_loop
