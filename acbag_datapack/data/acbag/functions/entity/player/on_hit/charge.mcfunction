scoreboard players operation %mult acbag.dummy = true_damage acbag.dummy
scoreboard players operation %mult acbag.dummy *= acbag.const.100 acbag.dummy
scoreboard players operation %mult acbag.dummy /= dmg_att acbag.dummy

scoreboard players operation acbag.damage acbag.dummy *= %mult acbag.dummy
scoreboard players operation acbag.damage acbag.dummy /= acbag.const.100 acbag.dummy