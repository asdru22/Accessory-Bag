execute store result score .slot acbag.dummy run data get storage acbag:storage root.temp.Slot.Slot
scoreboard players reset .found acbag.dummy
function acbag:entity/player/actions/drink_potion/clear
loot replace entity @s weapon.mainhand loot acbag:technical/potion_copy_nbt
give @s[gamemode=!creative] glass_bottle