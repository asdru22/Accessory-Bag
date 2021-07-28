scoreboard players reset @s acbag.useTrident
data modify storage acbag:storage root.temp.item set from entity @s SelectedItem
scoreboard players operation acbag.temp_id acbag.dummy = @s acbag.id
data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
function acbag:entity/player/shoot/accessory_list

execute as @e[type=trident,tag=!global.ignore,tag=!acbag.trident_setup,nbt={OnGround:0b}] run function acbag:entity/player/shoot/trident/as_trident