execute if data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:sugar"}] run function acbag:block/soul_cauldron/use/sugar/present

execute unless data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:sugar"}] run data modify storage acbag:storage root.temp.cauldron.Items insert -1 from storage acbag:storage root.temp.cauldron.tempItem

scoreboard players set .found acbag.dummy 1

item modify entity @s weapon.mainhand acbag:remove_1_count