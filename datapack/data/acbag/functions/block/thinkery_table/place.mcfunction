advancement revoke @s only acbag:technical/place_table
execute as @e[type=item_frame,limit=1,tag=acbag.thinkery_table] at @s align xyz positioned ~.5 ~ ~.5 run function acbag:block/thinkery_table/set
stopsound @a * minecraft:entity.item_frame.place