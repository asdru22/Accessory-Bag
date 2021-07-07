summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stone",tag:{acbag:1b}},PickupDelay:40s}
execute as @e[limit=1,type=item,nbt={Item:{tag:{acbag:1b}}}] run data modify entity @s Item set from storage acbag:storage root.temp.Inventory[0]
data remove storage acbag:storage root.temp.Inventory[0]
execute if data storage acbag:storage root.temp.Inventory[] run function acbag:entity/player/death/drop