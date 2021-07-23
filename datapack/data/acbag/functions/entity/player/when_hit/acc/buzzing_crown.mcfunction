scoreboard players set .buzzing_crown acbag.dummy 1
scoreboard players set .acc acbag.dummy 1
data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.buzzing_crown","color":"green"}'
data modify storage acbag:storage root.temp.UUID set from entity @s UUID