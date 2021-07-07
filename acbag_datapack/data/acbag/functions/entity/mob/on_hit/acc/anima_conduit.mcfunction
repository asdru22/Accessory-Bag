scoreboard players operation acbag.damage acbag.dummy = temp acbag.dummy
scoreboard players set acbag.ignore_armor acbag.dummy 1
function acbag:entity/mob/damage/calculate
scoreboard players set anima.conduit acbag.dummy 0