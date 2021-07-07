schedule function acbag:second 1s replace

execute as @a[tag=acbag.celestial_crystal] unless score @s acbag.cAstrolite = @s acbag.mAstrolite run function acbag:entity/player/astrolites/regen
execute as @e[type=armor_stand,tag=acbag.thinkery_table] unless entity @a[tag=acbag.inside_table_gui,distance=..10] as @a[tag=acbag.inside_table_gui,distance=10..] at @s unless entity @e[type=armor_stand,tag=acbag.thinkery_table,distance=..10] run tag @s remove acbag.inside_table_gui
execute as @a[tag=acbag.celestial_crystal] run function acbag:entity/player/astrolites/bag
execute as @a run function acbag:technical/second/bag