#get 20% of damage dealt
scoreboard players operation acbag.damage acbag.dummy *= acbag.const.20 acbag.dummy
scoreboard players operation acbag.damage acbag.dummy /= acbag.const.100 acbag.dummy
#no need to calculate armor, since the prev damage score already has
scoreboard players set acbag.ignore_armor acbag.dummy 1

function acbag:entity/mob/damage/calculate