scoreboard players operation uuid acbag.dummy = @s acbag.id
execute as @e[type=armor_stand,tag=acbag.acc.ender_beacon.marker] if score @s acbag.id = uuid acbag.dummy run kill @s
tag @s remove acbag.acc.ender_beacon
tag @s remove acbag.ticking.acc.ender_beacon