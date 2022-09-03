scoreboard players operation block bsc = @s cal1
function bsc:set
kill @e[type=falling_block,limit=1,tag=pub,sort=nearest]
kill @s