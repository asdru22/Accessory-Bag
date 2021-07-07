scoreboard players operation acbag.temp acbag.dummy = @s acbag.mAstrolite
scoreboard players operation acbag.temp acbag.dummy *= @s acbag.pAstrolite
scoreboard players operation acbag.temp acbag.dummy /= acbag.const.100 acbag.dummy
scoreboard players operation @s acbag.cAstrolite += acbag.temp acbag.dummy

execute if score @s acbag.cAstrolite > @s acbag.mAstrolite run scoreboard players operation @s acbag.cAstrolite = @s acbag.mAstrolite

scoreboard players operation acbag.dummy_1 acbag.dummy = acbag.temp acbag.dummy
scoreboard players operation acbag.dummy_1 acbag.dummy /= acbag.const.10 acbag.dummy
scoreboard players operation acbag.temp acbag.dummy %= acbag.const.10 acbag.dummy

scoreboard players operation acbag.dummy_2 acbag.dummy = @s acbag.cAstrolite
scoreboard players operation acbag.dummy_3 acbag.dummy = @s acbag.cAstrolite
scoreboard players operation acbag.dummy_2 acbag.dummy /= acbag.const.10 acbag.dummy
scoreboard players operation acbag.dummy_3 acbag.dummy %= acbag.const.10 acbag.dummy

scoreboard players operation acbag.dummy_4 acbag.dummy = @s acbag.mAstrolite
scoreboard players operation acbag.dummy_5 acbag.dummy = @s acbag.mAstrolite
scoreboard players operation acbag.dummy_4 acbag.dummy /= acbag.const.10 acbag.dummy
scoreboard players operation acbag.dummy_5 acbag.dummy %= acbag.const.10 acbag.dummy


title @s[tag=!acbag.tempActionbar] actionbar [{"text":"+","color":"gray"},{"score":{"name":"acbag.dummy_1","objective":"acbag.dummy"},"color":"light_purple"},{"text":"."},{"score":{"name":"acbag.temp","objective":"acbag.dummy"},"color":"light_purple"},{"text":"\u000a","font":"acbag:main","color":"white"},{"text":" ("},{"score":{"name":"acbag.dummy_2","objective":"acbag.dummy"},"color":"light_purple"},{"text":"."},{"score":{"name":"acbag.dummy_3","objective":"acbag.dummy"},"color":"light_purple"},{"text":"/"},{"score":{"name":"acbag.dummy_4","objective":"acbag.dummy"},"color":"light_purple"},{"text":"."},{"score":{"name":"acbag.dummy_5","objective":"acbag.dummy"},"color":"light_purple"},{"text":")"}]

tag @s remove acbag.tempActionbar