scoreboard players add @s acbag.dummy2 1
execute at @s run particle minecraft:glow ~ ~1 ~ 0.2 0.5 0.2 0.05 10
execute if entity @s[scores={acbag.dummy2=2..}] run function acbag:entity/player/on_hit/acc/fungi_concoction/lichen/destroy

execute unless score .destroy acbag.dummy matches 1 at @s unless entity @e[type=#acbag:mobs,tag=acbag.mob_in_growing_lichen,distance=..1,limit=1,sort=nearest,dx=0] run function acbag:entity/player/on_hit/acc/fungi_concoction/lichen/drops