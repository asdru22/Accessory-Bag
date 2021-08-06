execute as @e[type=item_frame,distance=..10,tag=acbag.soul_cauldron] at @s run function acbag:block/soul_cauldron/check
stopsound @a * minecraft:entity.item_frame.place
advancement revoke @s only acbag:technical/place_soul_cauldron