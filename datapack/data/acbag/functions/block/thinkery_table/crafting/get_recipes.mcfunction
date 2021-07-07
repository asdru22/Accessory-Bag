scoreboard players set acbag.result acbag.dummy 0
function acbag:block/thinkery_table/crafting/get_count
function acbag:block/thinkery_table/crafting/list
execute if entity @s[tag=acbag.recipe_found] run function acbag:block/thinkery_table/crafting/success