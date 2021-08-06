scoreboard players reset .distance acbag.dummy
tag @s add acbag.target
data modify storage acbag:storage root.temp.cauldron set value {}
data modify storage acbag:storage root.temp.cauldron set from entity @s ArmorItems[3].tag.acbag.cauldron

execute as @p[advancements={acbag:technical/block/soul_cauldron=true},predicate=acbag:item/water_bucket] run function acbag:block/soul_cauldron/as_player

data modify entity @s ArmorItems[3].tag.acbag.cauldron set from storage acbag:storage root.temp.cauldron