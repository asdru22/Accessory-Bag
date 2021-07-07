scoreboard players set acbag.ignore_armor acbag.dummy 0
scoreboard players operation acbag.damage acbag.dummy = swirl_dmg acbag.dummy
function acbag:entity/mob/damage/calculate