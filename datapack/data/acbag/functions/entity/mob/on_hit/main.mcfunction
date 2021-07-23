execute if score anima.conduit acbag.dummy matches 1 run function acbag:entity/mob/on_hit/acc/anima_conduit

execute if score .buzzing_crown acbag.dummy matches 1 run function acbag:entity/mob/on_hit/acc/buzzing_crown/main

execute if entity @s[tag=acbag.acc.buzzing_crown.bee] run function acbag:entity/mob/on_hit/acc/buzzing_crown/as_bee