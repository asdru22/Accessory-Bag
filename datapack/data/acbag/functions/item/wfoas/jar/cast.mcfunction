scoreboard players remove rc.dist acbag.dummy 1
execute if block ~ ~ ~ soul_sand if predicate acbag:location/soul_sand_valley run function acbag:item/wfoas/jar/soul_sand
execute if block ~ ~ ~ #minecraft:coal_ores if predicate acbag:item/tar_dispenser run function acbag:item/wfoas/jar/coal_ore
execute if score rc.dist acbag.dummy matches 1.. positioned ^ ^ ^.5 run function acbag:item/wfoas/jar/cast