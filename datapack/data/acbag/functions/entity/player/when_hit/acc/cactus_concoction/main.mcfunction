scoreboard players set .cactus_concoction acbag.dummy 1
scoreboard players set .acc acbag.dummy 1
data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.cactus_concoction","color":"green"}'

scoreboard players operation .reflect acbag.dummy = damage_recived acbag.dummy
scoreboard players operation .reflect acbag.dummy /= acbag.const.4 acbag.dummy