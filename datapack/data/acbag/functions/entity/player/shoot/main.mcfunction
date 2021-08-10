data modify storage acbag:storage root.temp.item set from entity @s SelectedItem
scoreboard players operation acbag.temp_id acbag.dummy = @s acbag.id

scoreboard players operation $charge acbag.dummy = @s acbag.pull

data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
function acbag:entity/player/shoot/accessory_list

execute if entity @s[nbt={SelectedItem:{tag:{acbag:{identifier:1b}}}}] run function acbag:entity/player/shoot/custom_weapon

execute as @e[type=arrow,tag=!acbag.arrow_setup,nbt={OnGround:0b}] run function acbag:entity/player/shoot/as_arrow

scoreboard players reset @s acbag.useBow
scoreboard players reset @s acbag.useCbow