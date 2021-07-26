
data modify storage acbag:storage root.temp.Inventory set from entity @s Inventory
execute if data entity @s Inventory[{Slot:100b}] at @s run function acbag:entity/player/actions/invisibility_changed/item/boots
execute if data entity @s Inventory[{Slot:101b}] at @s run function acbag:entity/player/actions/invisibility_changed/item/leggings
execute if data entity @s Inventory[{Slot:102b}] at @s run function acbag:entity/player/actions/invisibility_changed/item/chestplate