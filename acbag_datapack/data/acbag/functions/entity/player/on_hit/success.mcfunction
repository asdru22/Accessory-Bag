tag @s add acbag.global.hit
data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
function acbag:entity/player/on_hit/accessory_list

execute if predicate acbag:hold_filled_sword run function acbag:entity/player/on_hit/sword/init
execute if entity @s[advancements={acbag:technical/on_hit={mob=true}}] run function acbag:entity/matching/find_entity
tag @s remove acbag.global.hit