execute if score .fungi_concoction acbag.dummy matches 1 if entity @s[tag=!acbag.mob_in_growing_lichen] run function acbag:entity/player/on_hit/acc/fungi_concoction/main
#
execute if score .firecracker acbag.dummy matches 1 run function acbag:entity/mob/when_hit/acc/firecracker
#
execute if entity @p[tag=acbag.global.hit,tag=acbag.feral_claws] run function acbag:entity/player/on_hit/acc/feral_claws/disable
#
execute if score .damage_meter acbag.dummy matches 1 at @s run function acbag:entity/player/on_hit/acc/damage_meter/display

execute if score .cursed_pumpkin_medallion acbag.dummy matches 1 run function acbag:entity/player/on_hit/acc/cursed_pumpkin_medallion/hit_mob

execute if score .tar_dispenser acbag.dummy matches 1 if entity @s[predicate=acbag:tar_effect] at @s as @e[type=area_effect_cloud,limit=1,sort=nearest,dx=0,nbt={Effects:[{Id:26b,Amplifier:65b}]}] at @s as @e[type=#acbag:mobs,dx=0,tag=!global.ignore] run function acbag:entity/player/on_hit/acc/tar_dispenser/trigger