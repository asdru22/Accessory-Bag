tag @s remove acbag.schedule.alchemist_glove
data modify storage acbag:storage root.temp.Inventory set from entity @s Inventory
scoreboard players set .found acbag.dummy 1
function acbag:entity/player/actions/drink_potion/loop