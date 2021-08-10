execute if entity @s[type=glow_item_frame,tag=acbag.thinkery_table] at @s unless entity @a[tag=acbag.inside_table_gui,distance=..10] as @a[tag=acbag.inside_table_gui,distance=10..] at @s unless entity @e[type=glow_item_frame,tag=acbag.thinkery_table,distance=..10] run tag @s remove acbag.inside_table_gui

execute if entity @s[type=armor_stand,tag=acbag.growing_lichen] run function acbag:entity/player/on_hit/acc/fungi_concoction/lichen/second

execute if entity @s[type=arrow,tag=!acbag.on_ground,nbt={inGround:1b}] run function acbag:entity/player/shoot/arrow_on_ground

execute if entity @s[type=armor_stand,tag=acbag.entity.tornado] run function acbag:entity/player/actions/use_totem/second

execute if entity @s[type=wandering_trader,tag=acbag.no_trades] run data merge entity @s {Offers:{Recipes:[]}}