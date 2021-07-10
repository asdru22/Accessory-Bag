scoreboard players operation .temp acbag.dummy = @s acbag.id
execute at @s as @e[type=#acbag:mobs,distance=..1,tag=acbag.mob_in_growing_lichen,dx=0] run function acbag:entity/player/on_hit/acc/fungi_concoction/leave
kill @s
scoreboard players set .destroy acbag.dummy 1