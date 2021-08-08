execute if data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:glow_berries"}] run function acbag:block/soul_cauldron/use/glow_berries/present

execute unless data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:glow_berries"}] run data modify storage acbag:storage root.temp.cauldron.Items insert -1 from storage acbag:storage root.temp.cauldron.tempItem

scoreboard players set .found acbag.dummy 1

item modify entity @s weapon.mainhand acbag:remove_1_count