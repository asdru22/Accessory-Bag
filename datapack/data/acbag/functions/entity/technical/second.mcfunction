execute if entity @s[type=glow_item_frame,tag=acbag.thinkery_table] at @s unless entity @a[tag=acbag.inside_table_gui,distance=..10] as @a[tag=acbag.inside_table_gui,distance=10..] at @s unless entity @e[type=glow_item_frame,tag=acbag.thinkery_table,distance=..10] run tag @s remove acbag.inside_table_gui

execute if entity @s[type=armor_stand,tag=acbag.growing_lichen] run function acbag:entity/player/on_hit/acc/fungi_concoction/lichen/second

execute if entity @s[type=arrow,tag=!acbag.on_ground,tag=acbag.flame_2_arrow,nbt={inGround:1b}] run function acbag:entity/player/shoot/acc/flame_2_ench_book/effect

execute if entity @s[type=armor_stand,tag=acbag.entity.tornado] run function acbag:entity/player/actions/use_totem/second