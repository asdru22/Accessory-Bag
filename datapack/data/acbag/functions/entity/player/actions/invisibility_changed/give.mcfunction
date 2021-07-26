data modify storage acbag:storage root.temp.Armor set from entity @s data.Armor
summon armor_stand ~ ~ ~ {Tags:["acbag.temp.stand"]}
execute as @e[type=armor_stand,tag=acbag.temp.stand] run function acbag:entity/player/actions/invisibility_changed/armor
kill @s
