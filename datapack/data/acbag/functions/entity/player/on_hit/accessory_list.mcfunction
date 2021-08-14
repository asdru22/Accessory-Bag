data modify storage acbag:storage root.temp.AccArray set value []
##          LIST
execute if predicate acbag:chance/15 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"feral_claws",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/feral_claws/enable
#
execute if entity @s[scores={acbag.light_dmg=1..}] run function acbag:entity/player/on_hit/acc/faraday_jewel
#
execute if predicate acbag:item/piercing_crossbow if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"firecracker",from:"asdru:accessory_bag"}} if score @s acbag.cAstrolite matches 150.. run function acbag:entity/player/on_hit/acc/firecracker/enable
#
execute if predicate acbag:chance/10 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"fungi_concoction",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/fungi_concoction/enable
#
execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"damage_meter",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/damage_meter/enable
#
execute if predicate acbag:chance/10 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"cursed_pumpkin_medallion",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/cursed_pumpkin_medallion/enable
#
execute if predicate acbag:sword_fire_aspect run function acbag:entity/player/on_hit/acc/tar_dispenser/check
#
execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"portable_freezer",from:"asdru:accessory_bag"}} at @s if entity @e[type=#acbag:mobs,distance=..10,tag=!global.ignore,nbt={TicksFrozen:140,HurtTime:10s}] run function acbag:entity/player/on_hit/acc/portable_freezer/enable
#
execute if predicate acbag:chance/5 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"concussive_glove",from:"asdru:accessory_bag"}} run function acbag:entity/player/on_hit/acc/concussive_glove/enable
#
execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"surge_capacitor",from:"asdru:accessory_bag"}} if predicate acbag:thundering run function acbag:entity/player/shoot/acc/surge_capacitor/hit
execute if score .acc acbag.dummy matches 1 run function acbag:item/accessory_bag/display