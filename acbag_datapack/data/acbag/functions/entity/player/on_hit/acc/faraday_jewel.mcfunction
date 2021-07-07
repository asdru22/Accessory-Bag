scoreboard players operation acbag.damage acbag.dummy += @s acbag.light_dmg
scoreboard players set .charge acbag.dummy 0
data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.faraday_jewel","color":"red"}'
scoreboard players reset @s acbag.light_dmg