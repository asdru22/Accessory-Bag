data modify storage acbag:storage root.temp.Slot set from storage acbag:storage root.temp.Inventory[0]
execute if data storage acbag:storage root.temp.Slot{id:"minecraft:potion"} run function acbag:entity/player/actions/drink_potion/found
data remove storage acbag:storage root.temp.Inventory[0]
execute if score .found acbag.dummy matches 1 if data storage acbag:storage root.temp.Inventory[] run function acbag:entity/player/actions/drink_potion/loop