data modify storage acbag:storage root.temp.AccArray set value []
##          LIST
execute if predicate acbag:chance/15 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"feral_claws",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/feral_claws/enable
#
execute if entity @s[scores={acbag.light_dmg=1..}] run function acbag:entity/player/on_hit/acc/faraday_jewel
#
execute if predicate acbag:item/piercing_crossbow if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"firecracker",from:"asdru:accessory_bag"}} if score @s acbag.cAstrolite matches 150.. run function acbag:entity/player/on_hit/acc/firecracker/enable
#
execute if predicate acbag:chance/10 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"fungi_concoction",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/fungi_concoction/enable

execute if score .acc acbag.dummy matches 1 run function acbag:item/accessory_bag/display