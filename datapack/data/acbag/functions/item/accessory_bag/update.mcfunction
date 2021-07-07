advancement revoke @s only acbag:technical/inv_update
data modify storage acbag:storage root.temp.item set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
execute unless data entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}] run data remove storage acbag:storage root.temp.item
scoreboard players operation temp acbag.dummy = @s acbag.id
execute as @e[type=marker,tag=acbag.storage] if score @s acbag.id = temp acbag.dummy run function acbag:item/accessory_bag/data