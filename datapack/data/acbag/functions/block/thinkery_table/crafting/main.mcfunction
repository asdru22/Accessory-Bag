
execute if entity @s[tag=acbag.recipe_found] unless data block ~ ~ ~ Items[{Slot:16b}] run function acbag:block/thinkery_table/crafting/take_output
execute if data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b}].tag.acbag{CraftOutput:1b} run function acbag:block/thinkery_table/crafting/save_output


item replace block ~ ~ ~ container.16 with air
tag @s remove acbag.recipe_found
execute if entity @s[tag=!acbag.recipe_found] run function acbag:block/thinkery_table/crafting/get_recipes