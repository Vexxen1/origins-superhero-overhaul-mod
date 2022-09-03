## reset
tag @e[tag=!self] remove entity
## entity
execute if entity @e[tag=self,tag=entity] run tag @s add aim_target
execute if entity @e[tag=self,tag=entity] run scoreboard players operation @s player_id_con = @e[tag=self,limit=1] player_id

## block
execute if entity @e[tag=self,tag=block] run summon marker ~ ~ ~ {Tags:["aim_target"]}
execute if entity @e[tag=self,tag=block] run scoreboard players operation @e[tag=aim_target,tag=!summoned,type=minecraft:marker] player_id_con = @e[tag=self,limit=1] player_id
execute if entity @e[tag=self,tag=block] run tag @e[tag=aim_target,type=minecraft:marker] add summoned
