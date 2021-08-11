scoreboard players set .found acbag.dummy 0

execute if score .found acbag.dummy matches 0 unless data storage acbag:storage root.temp.cauldron.Items[] run function acbag:block/soul_cauldron/recipes/water_bottle

execute if score .found acbag.dummy matches 0 if score .mix acbag.dummy matches 3 if data storage acbag:storage root.temp.cauldron{Items:[{id:"minecraft:sugar",Count:2b},{id:"minecraft:slime_ball",Count:1b},{id:"minecraft:glow_berries",Count:4b}]} run function acbag:block/soul_cauldron/recipes/glow_jelly

execute if score .found acbag.dummy matches 0 if score .mix acbag.dummy matches 5 if data storage acbag:storage root.temp.cauldron{Items:[{id:"minecraft:repeating_command_block",Count:5b,tag:{ctc:{id:"haunted_seeds",from:"asdru:accessory_bag"}}},{id:"minecraft:wither_rose",Count:1b},{tag:{ctc:{id:"ambrosia",from:"asdru:accessory_bag"}},Count:1b}]} run function acbag:block/soul_cauldron/recipes/voidflow_extract


execute if score .found acbag.dummy matches 0 run data modify storage acbag:storage root.temp.Slot set value {id:"minecraft:potion",Count:1b,tag:{HideFlags:32,Potion:"minecraft:harming",display:{Name:'{"translate":"item.acbag.odd_mixture","italic":false}'},ctc:{id:"odd_mixture",from:"asdru:accessory_bag"},acbag:{brewed:1b}}}
tellraw @p {"score":{"name": ".mix","objective": "acbag.dummy"}}
scoreboard players reset .mix acbag.dummy