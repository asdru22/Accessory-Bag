data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"suspicious_bait",from:"asdru:accessory_bag"}} run function acbag:entity/player/actions/fishing/accessory_list
advancement revoke @s only acbag:technical/fishing