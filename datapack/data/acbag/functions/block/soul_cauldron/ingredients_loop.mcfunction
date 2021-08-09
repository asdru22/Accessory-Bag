execute store result score .count acbag.dummy run data get storage acbag:storage root.temp.cauldron.Items[0].Count
execute if data storage acbag:storage root.temp.cauldron.Items[0].tag.ctc run item modify entity @s weapon.mainhand acbag:custom_ingredient
execute unless data storage acbag:storage root.temp.cauldron.Items[0].tag.ctc run item modify entity @s weapon.mainhand acbag:vanilla_ingredient
data remove storage acbag:storage root.temp.cauldron.Items[0]
execute if data storage acbag:storage root.temp.cauldron.Items[] run function acbag:block/soul_cauldron/ingredients_loop