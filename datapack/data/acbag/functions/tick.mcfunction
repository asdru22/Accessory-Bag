execute as @e[type=#acbag:mobs] run function acbag:entity/mob/tick
execute as @e[type=glow_item_frame,tag=acbag.thinkery_table] at @s run function acbag:block/thinkery_table/tick

execute as @a[gamemode=adventure,predicate=!acbag:hold_head,tag=acbag.head] run gamemode survival @s
execute as @a[gamemode=survival,predicate=acbag:hold_head] run function acbag:entity/player/player_head


execute as @a[scores={acbag.useBow=1..}] run function acbag:entity/player/shoot/main
execute as @a[scores={acbag.useCbow=1..}] run function acbag:entity/player/shoot/main
execute as @a[scores={acbag.openBundle=1..}] run function acbag:item/accessory_bag/open
execute as @a[scores={acbag.wfoas=1..}] run function acbag:item/wfoas/main


execute as @a[tag=acbag.has_pulled] run function acbag:entity/player/charge/tick

execute as @a store result score @s acbag.dummy run data get entity @s Health 100