advancement revoke @s only acbag:technical/accessory_bag
data remove storage acbag:storage root.temp.item
data modify storage acbag:storage root.temp.item set from entity @s Inventory[{id:"minecraft:bundle",tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}].tag.Items[-1]
#execute unless data storage acbag:storage root.temp.item.tag.acbag.Accessory run function acbag:item/accessory_bag/schedule