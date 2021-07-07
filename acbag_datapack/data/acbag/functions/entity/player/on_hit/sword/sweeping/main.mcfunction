scoreboard players operation swirl_dmg acbag.dummy = acbag.damage acbag.dummy
scoreboard players operation swirl_dmg acbag.dummy /= acbag.const.5 acbag.dummy
execute at @s as @e[type=#acbag:mobs,distance=0.1..2.5] run function acbag:entity/player/on_hit/sword/sweeping/apply