
scoreboard players operation T Poffhand_timer = @s Poffhand_timer
scoreboard players operation T Poffhand_timer -= @s offhand_timer
scoreboard players operation T Poffhand_timer *= 100 num
scoreboard players operation T Poffhand_timer /= @s Poffhand_timer

resource operation @s powers:powers/duel_weiding_offhand = T Poffhand_timer