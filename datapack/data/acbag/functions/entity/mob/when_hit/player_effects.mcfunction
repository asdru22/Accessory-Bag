execute if score .fungi_concoction acbag.dummy matches 1 if entity @s[tag=!acbag.mob_in_growing_lichen] run function acbag:entity/player/on_hit/acc/fungi_concoction/main
#
execute if score .firecracker acbag.dummy matches 1 run function acbag:entity/mob/when_hit/acc/firecracker
#
execute if entity @p[tag=acbag.global.hit,tag=acbag.feral_claws] run function acbag:entity/player/on_hit/acc/feral_claws/disable
#
execute if score .damage_meter acbag.dummy matches 1 at @s run function acbag:entity/player/on_hit/acc/damage_meter/display