execute if entity @s[tag=acbag.celestial_crystal] unless data storage acbag:storage root.temp.bag[].tag{ctc:{id:"celestial_crystal",from:"asdru:accessory_bag"}} run tag @s remove acbag.celestial_crystal
execute if entity @s[tag=!acbag.celestial_crystal] if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"celestial_crystal",from:"asdru:accessory_bag"}} run function acbag:entity/player/astrolites/acc/celestial_crystal
#
execute if predicate acbag:item/faraday_jewel if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"faraday_jewel",from:"asdru:accessory_bag"}} run function acbag:technical/second/acc/faraday_jewel/main
#
execute if entity @s[tag=!acbag.acc.crystal_heart] if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"crystal_heart",from:"asdru:accessory_bag"}} run function acbag:technical/second/acc/crystal_heart/enable
execute if entity @s[tag=acbag.acc.crystal_heart] unless data storage acbag:storage root.temp.bag[].tag{ctc:{id:"crystal_heart",from:"asdru:accessory_bag"}} run function acbag:technical/second/acc/crystal_heart/disable