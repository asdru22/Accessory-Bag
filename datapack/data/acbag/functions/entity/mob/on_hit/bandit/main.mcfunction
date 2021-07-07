data modify storage acbag:storage root.temp.entity set from entity @s
execute at @s run summon wandering_trader ~ ~ ~ {Tags:["acbag.temp"]}
tp @s 0 -100 0
kill @s
execute as @e[type=wandering_trader,tag=acbag.temp,limit=1] run function acbag:entity/mob/on_hit/bandit/data
scoreboard players set .playerdeath acbag.dummy 0