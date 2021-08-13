data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items
execute if data storage acbag:storage root.temp.bag run function acbag:technical/second/accessory_list

execute if entity @s[scores={acbag.ks=1..}] run scoreboard players remove @s acbag.ks 1