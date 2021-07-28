
tag @s add acbag.trident_setup
scoreboard players operation @s acbag.id = acbag.temp_id acbag.dummy

execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"gale_trident",from:"asdru:accessory_bag"}} run function acbag:entity/player/shoot/trident/acc/gale_trident/main