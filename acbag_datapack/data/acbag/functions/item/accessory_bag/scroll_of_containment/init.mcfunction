data modify storage acbag:storage root.temp.item set from entity @s SelectedItem
data modify storage acbag:storage root.temp.item.tag.Items set value []
execute as @e[type=item,nbt={Age:0s}] run function acbag:item/accessory_bag/scroll_of_containment/item
item modify entity @s weapon.mainhand acbag:copy_nbt
execute at @s run summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:stone",Count:1b,tag:{acbag:1b}}}
data modify entity @e[type=item,nbt={Item:{tag:{acbag:1b}}},limit=1] Item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air