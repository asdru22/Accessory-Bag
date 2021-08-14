execute if data storage acbag:storage root.temp.sword[].tag.ctc{id:"damage_blessing",from:"asdru:accessory_bag"} run scoreboard players add acbag.damage acbag.dummy 350

execute if data storage acbag:storage root.temp.sword[].tag.ctc{id:"sweeping_blessing",from:"asdru:accessory_bag"} run function acbag:entity/player/on_hit/sword/sweeping/main

execute if data storage acbag:storage root.temp.sword[].tag.ctc{id:"highlander_blessing",from:"asdru:accessory_bag"} if entity @s[nbt={OnGround:0b}] run scoreboard players add acbag.damage acbag.dummy 250

execute if data storage acbag:storage root.temp.sword[].tag.ctc{id:"pyromancer_blessing",from:"asdru:accessory_bag"} run scoreboard players add .pyromancer_blessing acbag.dummy 1

execute if data storage acbag:storage root.temp.sword[].tag.ctc{id:"vampire_blessing",from:"asdru:accessory_bag"} run function acbag:entity/player/on_hit/sword/vampire_blessing