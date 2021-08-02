data remove storage acbag:storage root.temp.bag
data modify storage acbag:storage root.temp.bag set from entity @s Inventory[{tag:{ctc:{id:"accessory_bag",from:"asdru:accessory_bag"}}}]
data modify storage acbag:storage root.temp.bag set from storage acbag:storage root.temp.bag.tag.Items

scoreboard players set .temp acbag.mAstrolite 500
scoreboard players set .temp acbag.pAstrolite 2

execute if data storage acbag:storage root.temp.bag run function acbag:entity/player/astrolites/accessory_list

scoreboard players operation @s acbag.mAstrolite = .temp acbag.mAstrolite
scoreboard players operation @s acbag.pAstrolite = .temp acbag.pAstrolite

execute unless score @s acbag.cAstrolite = @s acbag.mAstrolite run function acbag:entity/player/astrolites/regen