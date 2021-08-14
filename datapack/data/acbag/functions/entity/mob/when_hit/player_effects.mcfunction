execute if score .fungi_concoction acbag.dummy matches 1 if entity @s[tag=!acbag.mob_in_growing_lichen] run function acbag:entity/player/on_hit/acc/fungi_concoction/main
#
execute if score .firecracker acbag.dummy matches 1 run function acbag:entity/mob/when_hit/acc/firecracker
#
execute if entity @p[tag=acbag.global.hit,tag=acbag.feral_claws] run function acbag:entity/player/on_hit/acc/feral_claws/disable
#
execute if score .damage_meter acbag.dummy matches 1 at @s run function acbag:entity/player/on_hit/acc/damage_meter/display
#
execute if score .cursed_pumpkin_medallion acbag.dummy matches 1 run function acbag:entity/player/on_hit/acc/cursed_pumpkin_medallion/hit_mob
#
execute if score .portable_freezer acbag.dummy matches 1 run function acbag:entity/player/on_hit/acc/portable_freezer/effect
#
execute if score .concussive_glove acbag.dummy matches 1 if data entity @s HandItems[0].id unless entity @s[nbt={HandItems:[{id:"minecraft:stick"}]}] run function acbag:entity/player/on_hit/acc/concussive_glove/effect
#
execute if score .surge_capacitor acbag.dummy matches 1 run function acbag:entity/player/shoot/acc/surge_capacitor/as_mob
#
execute if score .pyromancer_blessing acbag.dummy matches 1 run function acbag:entity/player/on_hit/sword/pyromancer_blessing
execute if score .tar_dispenser acbag.dummy matches 1 if entity @s[predicate=acbag:tar_effect] at @s as @e[type=area_effect_cloud,limit=1,sort=nearest,dx=0,nbt={Effects:[{Id:26b,Amplifier:65b}]}] at @s as @e[type=#acbag:mobs,dx=0,tag=!global.ignore] run function acbag:entity/player/on_hit/acc/tar_dispenser/trigger