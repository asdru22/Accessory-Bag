data modify storage acbag:storage root.temp.AccArray set value []
## LIST
execute if predicate acbag:chance/5 if data storage acbag:storage root.temp.bag[].tag{ctc:{id:"anima_conduit",from:"asdru:accessory_bag"}} run function acbag:entity/player/when_hit/acc/anima_conduit
#

execute if score .acc acbag.dummy matches 1 run title @s actionbar [{"translate":"ui.acbag.triggered_accessories","color":"white"},{"nbt":"root.temp.AccArray[]","storage":"acbag:storage","interpret":true,"separator":" | "}]
scoreboard players set .acc acbag.dummy 0

execute if entity @s[scores={acbag.dmgBlocked=1..}] run function acbag:entity/player/when_hit/shield/main