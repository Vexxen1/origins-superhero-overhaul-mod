



execute at @s as @a if score @s player_id = @p add_friend unless score @p friend_request_timer matches 1.. run function vexxens_datapacks:friends/ui/friend_request

scoreboard players add @s friend_request_timer 1

execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.y] run function vexxens_datapacks:friends/ui/friend_request_accept
execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.y] run scoreboard players set @p add_friend 0
execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.y] run scoreboard players set @p friend_request_timer 0

execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.n] run function vexxens_datapacks:friends/ui/friend_request_deny
execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.n] run scoreboard players set @p add_friend 0
execute at @s as @a if score @s player_id = @p add_friend if entity @s[tag=FR.n] run scoreboard players set @p friend_request_timer 0

execute at @s as @a if score @s player_id = @p add_friend if entity @p[tag=FR.c] run function vexxens_datapacks:friends/ui/friend_request_cancel
execute at @s as @a if score @s player_id = @p add_friend if entity @p[tag=FR.c] run scoreboard players set @p add_friend 0
execute at @s as @a if score @s player_id = @p add_friend if entity @p[tag=FR.c] run scoreboard players set @p friend_request_timer 0

execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 300 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 299 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 298 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 297 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 296 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 295 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 294 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 293 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 292 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 291 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 290 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 288 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 286 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 284 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 282 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 280 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 278 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 274 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 270 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 266 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 262 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 258 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 254 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 250 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 246 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 242 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 238 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 234 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 230 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 226 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 222 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 218 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 214 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 210 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 206 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 202 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 2

execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 300.. run function vexxens_datapacks:friends/ui/friend_request_timeout
execute at @s as @a if score @s player_id = @p add_friend if score @p friend_request_timer matches 300.. run scoreboard players set @p add_friend 0
execute if score @s friend_request_timer matches 300.. run scoreboard players set @s friend_request_timer 0

title @s actionbar {"text":"[friend request pending...]","color":"gold"}