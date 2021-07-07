scoreboard players remove $distance acbag.dummy 1
particle end_rod
execute as @e[type=#acbag:mobs,dx=0,tag=!acbag.entity.hit] positioned ~-0.59 ~-0.59 ~-0.59 if entity @s[dx=0] at @s run function acbag:entity/player/charge/ender_beacon/hit
execute if score $distance acbag.dummy matches 1.. positioned ^ ^ ^.3 if block ~ ~ ~ #acbag:passable run function acbag:entity/player/charge/ender_beacon/shoot_cast 