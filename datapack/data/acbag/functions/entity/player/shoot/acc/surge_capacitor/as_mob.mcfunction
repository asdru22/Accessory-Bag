tag @s add acbag.hit_by_sc
scoreboard players set .jumps acbag.dummy 5
scoreboard players set .dist acbag.dummy 13

execute at @s positioned ~ ~1 ~ anchored eyes facing entity @e[type=#acbag:mobs,distance=..10,limit=1,sort=nearest,tag=!acbag.hit_by_sc,tag=!global.ignore] eyes run function acbag:entity/player/shoot/acc/surge_capacitor/cast
tag @e[type=#acbag:mobs,tag=acbag.hit_by_sc] remove acbag.hit_by_sc