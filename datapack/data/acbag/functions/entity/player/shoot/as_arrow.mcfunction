execute if entity @p[tag=acbag.acc.hellfire_dart] run function acbag:entity/player/charge/hellfire_dart/arrow
tag @s add acbag.arrow_setup
scoreboard players operation @s acbag.id = acbag.temp_id acbag.dummy
execute unless score $acbag.mult acbag.dummy matches 100 run function acbag:entity/player/shoot/arrow_speed

execute if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"flame_2_enchanted_book",from:"asdru:accessory_bag"}} run function acbag:entity/player/shoot/acc/flame_2_ench_book/tag

execute if score .the_phantom acbag.dummy matches 1 run function acbag:entity/player/shoot/custom_weapon/the_phantom/tag

execute if score .surge_capacitor acbag.dummy matches 1 run function acbag:entity/player/shoot/acc/surge_capacitor/main