execute if score @s acbag.pull = @s acbag.prev.pull run function acbag:entity/player/charge/reset
scoreboard players operation @s acbag.prev.pull = @s acbag.pull
execute if entity @s[scores={acbag.pull=22..}] run function acbag:entity/player/charge/bag
execute at @s anchored eyes positioned ^-.2 ^-0.05 ^.5 run function acbag:entity/player/charge/particles