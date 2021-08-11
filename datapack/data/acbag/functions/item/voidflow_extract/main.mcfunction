advancement revoke @s only acbag:technical/voidflow_extract
scoreboard players set .dim acbag.dummy 1
execute if score .dim acbag.dummy matches 1 if entity @s[nbt={Dimension:"acbag:spectral_plane"}] run function acbag:item/voidflow_extract/spectral_plane
execute if score .dim acbag.dummy matches 1 if entity @s[nbt={Dimension:"minecraft:overworld"}] run function acbag:item/voidflow_extract/overworld