scoreboard players reset .distance acbag.dummy
tag @s add acbag.target
data modify storage acbag:storage root.temp.cauldron set value {}
data modify storage acbag:storage root.temp.cauldron set from entity @s ArmorItems[3].tag.acbag.cauldron

execute as @p[advancements={acbag:technical/block/soul_cauldron=true}] run function acbag:block/soul_cauldron/as_player
function acbag:block/soul_cauldron/color_blending

data modify entity @s ArmorItems[3].tag.acbag.cauldron set from storage acbag:storage root.temp.cauldron

data merge entity @s {Offers:{}}