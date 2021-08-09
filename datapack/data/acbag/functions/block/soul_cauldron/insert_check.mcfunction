scoreboard players set .found acbag.dummy 0
scoreboard players set .mix acbag.dummy 0

execute if score .found acbag.dummy matches 0 if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:glow_berries"} run function acbag:block/soul_cauldron/use/glow_berries/main

execute if score .found acbag.dummy matches 0 if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:repeating_command_block",tag:{ctc:{id:"rosemary",from:"asdru:accessory_bag"}}} run function acbag:block/soul_cauldron/use/rosemary/main

execute if score .found acbag.dummy matches 0 if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:repeating_command_block",tag:{ctc:{id:"diamond_berry",from:"asdru:accessory_bag"}}} run function acbag:block/soul_cauldron/use/diamond_berry/main


execute if score .found acbag.dummy matches 0 if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:sugar"} run function acbag:block/soul_cauldron/use/sugar/main

execute if score .found acbag.dummy matches 0 if data storage acbag:storage root.temp.cauldron.tempItem{id:"minecraft:slime_ball"} run function acbag:block/soul_cauldron/use/slime_ball/main