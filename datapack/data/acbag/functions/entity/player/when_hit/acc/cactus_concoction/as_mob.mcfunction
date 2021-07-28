scoreboard players operation acbag.damage acbag.dummy = .reflect acbag.dummy
scoreboard players set acbag.ignore_armor acbag.dummy 1
function acbag:entity/mob/damage/calculate
scoreboard players set .cactus_concoction acbag.dummy 0