data modify storage acbag:storage root.temp.trade set value {rewardExp:0b,maxUses:1,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:air",Count:1b}}
scoreboard players set acbag.max acbag.dummy 20
function acbag:technical/rng
scoreboard players add acbag.result acbag.dummy 10
execute store result storage acbag:storage root.temp.trade.buy.Count byte 1 run scoreboard players get acbag.result acbag.dummy

data modify storage acbag:storage root.temp.trade.sell set from storage acbag:storage root.temp.Inventory[0] 
data modify storage acbag:storage root.temp.Recipes insert -1 from storage acbag:storage root.temp.trade
data remove storage acbag:storage root.temp.Inventory[0]

execute if data storage acbag:storage root.temp.Inventory[] run function acbag:entity/player/death/bandit/init 