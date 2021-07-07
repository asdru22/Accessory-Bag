scoreboard players reset @s acbag.pull
tag @s remove acbag.has_pulled

execute if entity @s[tag=acbag.ticking.acc.ender_beacon] run function acbag:entity/player/charge/ender_beacon/kill

execute if entity @s[tag=acbag.ticking.acc.hellfire_dart] run function acbag:entity/player/charge/hellfire_dart/reset
