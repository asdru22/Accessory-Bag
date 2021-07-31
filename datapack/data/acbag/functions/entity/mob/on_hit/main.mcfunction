execute if score anima.conduit acbag.dummy matches 1 run function acbag:entity/mob/on_hit/acc/anima_conduit

execute if score .buzzing_crown acbag.dummy matches 1 run function acbag:entity/mob/on_hit/acc/buzzing_crown/main

execute if entity @s[tag=acbag.acc.buzzing_crown.bee] run function acbag:entity/mob/on_hit/acc/buzzing_crown/as_bee

execute if score .cactus_concoction acbag.dummy matches 1 run function acbag:entity/player/when_hit/acc/cactus_concoction/as_mob

execute if entity @s[tag=acbag.custom_mob] run function acbag:entity/mob/on_hit/custom/main