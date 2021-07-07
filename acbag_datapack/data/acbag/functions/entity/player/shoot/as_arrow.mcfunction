execute if entity @p[tag=acbag.acc.hellfire_dart] run function acbag:entity/player/charge/hellfire_dart/arrow
tag @s add acbag.arrow_setup
scoreboard players operation @s acbag.id = acbag.temp_id acbag.dummy
execute unless score $acbag.mult acbag.dummy matches 100 run function acbag:entity/player/shoot/arrow_speed