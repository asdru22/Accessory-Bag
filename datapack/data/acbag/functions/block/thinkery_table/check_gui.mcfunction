execute store success score @s acbag.dummy run data modify entity @s Item.tag.acbag.stored_slots set from block ~ ~ ~ Items
execute if entity @s[scores={acbag.dummy=1..}] run function acbag:block/thinkery_table/update