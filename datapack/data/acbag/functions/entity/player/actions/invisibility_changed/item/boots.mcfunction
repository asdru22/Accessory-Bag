summon item ~ ~ ~ {Tags:["acbag.temp.item"],PickupDelay:0s,Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=acbag.temp.item,nbt={PickupDelay:0s}] run data modify entity @s Item set from storage acbag:storage root.temp.Inventory[{Slot:100b}]
item replace entity @s armor.feet with air