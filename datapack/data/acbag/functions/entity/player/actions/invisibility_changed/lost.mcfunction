function acbag:entity/player/actions/invisibility_changed/inv

scoreboard players operation .id acbag.dummy = @s acbag.id
tag @s add acbag.temp.me
execute as @e[type=marker,tag=acbag.armor_storage] if score @s acbag.id = .id acbag.dummy run function acbag:entity/player/actions/invisibility_changed/give
tag @s remove acbag.effect.invisibility
tag @s remove acbag.temp.me
advancement revoke @s only acbag:technical/gain_invisibility