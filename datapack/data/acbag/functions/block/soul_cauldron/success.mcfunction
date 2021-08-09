scoreboard players reset .distance acbag.dummy
tag @s add acbag.target
data modify storage acbag:storage root.temp.cauldron set value {}
data modify storage acbag:storage root.temp.cauldron set from entity @s ArmorItems[3].tag.acbag.cauldron

execute as @p[advancements={acbag:technical/block/soul_cauldron=true}] run function acbag:block/soul_cauldron/as_player
execute if data storage acbag:storage root.temp.cauldron{HasWater:1b} unless data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:wooden_shovel"} unless data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:glass_bottle"} unless data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:water_bucket"} run function acbag:block/soul_cauldron/color_blending

execute if score .take acbag.dummy matches 1 run function acbag:block/soul_cauldron/take_brew

data modify entity @s ArmorItems[3].tag.acbag.cauldron set from storage acbag:storage root.temp.cauldron