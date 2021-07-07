data modify entity @s Rotation set from entity @p[tag=acbag.temp.player] Rotation
#tp @s ~ ~ ~ facing entity @e[type=#acbag:mobs,limit=1,distance=0.1..30,sort=nearest] eyes
scoreboard players set $distance acbag.dummy 90
execute rotated as @s run function acbag:entity/player/charge/ender_beacon/shoot_cast