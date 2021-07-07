scoreboard players set $acbag.mult acbag.dummy 100
execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"enchanted_string",from:"asdru:accessory_bag"}} run scoreboard players add $acbag.mult acbag.dummy 10

execute if entity @s[tag=acbag.ticking.acc.ender_beacon] run function acbag:entity/player/charge/ender_beacon/shoot
execute if entity @s[tag=acbag.ticking.acc.hellfire_dart] run function acbag:entity/player/charge/hellfire_dart/shoot