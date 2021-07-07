tag @p[tag=acbag.feral_claws] remove acbag.feral_claws
scoreboard players operation acbag.damage acbag.dummy = true_damage acbag.dummy

scoreboard players set acbag.ignore_armor acbag.dummy 1
function acbag:entity/mob/damage/calculate
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.01 10