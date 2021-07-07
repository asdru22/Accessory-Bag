data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
function acbag:entity/player/villager_trade/accessory_list