data modify storage acbag:storage root.temp.cauldron.tempItem set from entity @s SelectedItem
data modify storage acbag:storage root.temp.cauldron.tempItem.Count set value 1b
execute unless data storage acbag:storage root.temp.cauldron.tempItem.tag.ctc run function acbag:block/soul_cauldron/item_color
execute unless data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:wooden_shovel"} unless data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:glass_bottle"} run function acbag:block/soul_cauldron/insert_check

execute if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:wooden_shovel"} run function acbag:block/soul_cauldron/use/wooden_shovel
execute if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:glass_bottle"} run function acbag:block/soul_cauldron/use/glass_bottle