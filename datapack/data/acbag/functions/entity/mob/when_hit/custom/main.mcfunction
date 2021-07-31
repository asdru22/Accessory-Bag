scoreboard players set .found acbag.dummy 0
execute if score .found acbag.dummy matches 0 if entity @s[tag=acbag.entity.wandering_soul] run function acbag:entity/mob/when_hit/custom/wandering_soul
execute if score .found acbag.dummy matches 0 if entity @s[tag=acbag.entity.yeti] run function acbag:entity/mob/when_hit/custom/yeti