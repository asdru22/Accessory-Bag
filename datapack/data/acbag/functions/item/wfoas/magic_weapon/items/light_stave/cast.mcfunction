particle dust_color_transition 0.871 1.000 0.020 1 0.918 1.000 0.588 ~ ~ ~ 0 0 0 1 0 normal
execute unless block ~ ~ ~ #acbag:passable run scoreboard players set .wall acbag.dummy 1
execute as @e[type=#acbag:mobs,tag=!global.ignore] unless score @s acbag.light_dmg matches 1.. positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function acbag:item/wfoas/magic_weapon/hit