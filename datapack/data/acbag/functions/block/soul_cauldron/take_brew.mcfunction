data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:6900001}}]}
scoreboard players reset .take acbag.dummy
data modify entity @s HandItems[0] set from storage acbag:storage root.temp.Slot
execute store result entity @s HandItems[0].tag.CustomPotionColor int 1 run scoreboard players get $new_color acbag.dummy

execute if data storage acbag:storage root.temp.cauldron.Items[] run function acbag:block/soul_cauldron/ingredients_loop

data modify storage acbag:storage root.temp.cauldron set value {}
data modify storage acbag:storage root.temp.Slot set from entity @s HandItems[0] 
data remove entity @s HandItems[0]
loot give @p[advancements={acbag:technical/block/soul_cauldron=true}] loot acbag:technical/potion_copy_nbt
data remove storage acbag:storage root.temp.Slot