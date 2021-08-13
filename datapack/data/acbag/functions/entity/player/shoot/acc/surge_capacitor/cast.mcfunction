particle end_rod
particle dust 0.576 1 1 1
execute as @e[type=#acbag:mobs,tag=!global.ignore,tag=!acbag.hit_by_sc] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] at @s run function acbag:entity/player/shoot/acc/surge_capacitor/mob_hit

execute if score .jumps acbag.dummy matches 1.. positioned ^ ^ ^.75 if block ~ ~ ~ #acbag:passable if score .dist acbag.dummy matches 1.. run function acbag:entity/player/shoot/acc/surge_capacitor/cast