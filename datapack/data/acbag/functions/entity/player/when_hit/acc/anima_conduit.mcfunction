scoreboard players set anima.conduit acbag.dummy 1
scoreboard players set .acc acbag.dummy 1
data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.anima_conduit","color":"green"}'

scoreboard players operation temp acbag.dummy = damage_recived acbag.dummy
scoreboard players operation temp acbag.dummy /= acbag.const.2 acbag.dummy
scoreboard players operation acbag.heal acbag.dummy = temp acbag.dummy
scoreboard players operation acbag.heal acbag.dummy /= acbag.const.100 acbag.dummy
execute if score acbag.heal acbag.dummy matches 1.. run function acbag:entity/player/heal/apply