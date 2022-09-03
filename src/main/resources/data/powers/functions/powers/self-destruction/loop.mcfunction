execute unless entity @s[tag=charging] run function powers:powers/self-destruction/stop_charge
execute if entity @s[tag=charging] run function powers:powers/self-destruction/charge
tag @s remove charging
