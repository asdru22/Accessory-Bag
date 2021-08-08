data modify storage acbag:storage root.temp.cauldron.tempItem set from entity @s SelectedItem
data modify storage acbag:storage root.temp.cauldron.tempItem.Count set value 1b
execute unless data storage acbag:storage root.temp.cauldron.tempItem.tag.ctc run function acbag:block/soul_cauldron/item_color
function acbag:block/soul_cauldron/insert_check