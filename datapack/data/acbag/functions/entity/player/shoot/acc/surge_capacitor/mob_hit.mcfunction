scoreboard players set @s acbag.damage 200
scoreboard players set acbag.ignore_armor acbag.dummy 0
function acbag:entity/mob/damage/calculate
tag @s add acbag.hit_by_sc
scoreboard players remove .jumps acbag.dummy 1
scoreboard players set .dist acbag.dummy 13

execute if score .jumps acbag.dummy matches 1.. at @s positioned ~ ~1 ~ anchored eyes facing entity @e[type=#acbag:mobs,distance=..10,limit=1,sort=nearest,tag=!acbag.hit_by_sc,tag=!global.ignore] eyes run function acbag:entity/player/shoot/acc/surge_capacitor/cast