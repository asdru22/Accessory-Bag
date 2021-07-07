scoreboard players operation uuid acbag.dummy = @s acbag.id
tag @s add acbag.temp.player
execute as @e[type=armor_stand,tag=acbag.acc.ender_beacon.marker] if score @s acbag.id = uuid acbag.dummy at @s positioned ~ ~1.8 ~ run function acbag:entity/player/charge/ender_beacon/init
tag @s remove acbag.temp.player
tag @s remove acbag.ticking.acc.ender_beacon