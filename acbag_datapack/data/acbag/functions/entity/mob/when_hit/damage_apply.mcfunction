
execute if score .charge acbag.dummy matches 1 run function acbag:entity/player/on_hit/charge
scoreboard players set acbag.ignore_armor acbag.dummy 1
function acbag:entity/mob/damage/calculate