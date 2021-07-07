# acbag.ignore_armor acbag.dummy: 1 if ignores armor, 0 if doesn't

execute store result score acbag.health acbag.dummy run data get entity @s Health 100

execute store result score acbag.temp_0 acbag.dummy run attribute @s minecraft:generic.armor get 10
execute store result score acbag.temp_1 acbag.dummy run attribute @s minecraft:generic.armor_toughness get 10

execute if score acbag.ignore_armor acbag.dummy matches 0 run function acbag:entity/mob/damage/armor

execute if score acbag.damage acbag.dummy >= acbag.health acbag.dummy run function acbag:entity/mob/damage/kill
execute if score acbag.damage acbag.dummy <= acbag.health acbag.dummy run function acbag:entity/mob/damage/hurt
tag @s remove acbag.hit