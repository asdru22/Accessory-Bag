#Callers: potank:inventory/load_tank/valid

#Desc: Blends the old and new color together

#Convert old color into RGB
execute store result score $old_color acbag.dummy run data get entity @s ArmorItems[3].tag.display.color
scoreboard players operation $old_red acbag.dummy = $old_color acbag.dummy
scoreboard players operation $old_red acbag.dummy /= acbag.const.65536 acbag.dummy
scoreboard players operation $remove acbag.dummy = $old_red acbag.dummy
scoreboard players operation $remove acbag.dummy *= acbag.const.65536 acbag.dummy

scoreboard players operation $old_color acbag.dummy -= $remove acbag.dummy
scoreboard players operation $old_green acbag.dummy = $old_color acbag.dummy
scoreboard players operation $old_green acbag.dummy /= acbag.const.256 acbag.dummy
scoreboard players operation $remove acbag.dummy = $old_green acbag.dummy
scoreboard players operation $remove acbag.dummy *= acbag.const.256 acbag.dummy

scoreboard players operation $old_color acbag.dummy -= $remove acbag.dummy
scoreboard players operation $old_blue acbag.dummy = $old_color acbag.dummy

#Convert new color into RGB
execute store result score $new_color acbag.dummy run data get storage acbag:storage root.temp.cauldron.tempItem.tag.acbag.brew.color
scoreboard players operation $new_red acbag.dummy = $new_color acbag.dummy
scoreboard players operation $new_red acbag.dummy /= acbag.const.65536 acbag.dummy
scoreboard players operation $remove acbag.dummy = $new_red acbag.dummy
scoreboard players operation $remove acbag.dummy *= acbag.const.65536 acbag.dummy

scoreboard players operation $new_color acbag.dummy -= $remove acbag.dummy
scoreboard players operation $new_green acbag.dummy = $new_color acbag.dummy
scoreboard players operation $new_green acbag.dummy /= acbag.const.256 acbag.dummy
scoreboard players operation $remove acbag.dummy = $new_green acbag.dummy
scoreboard players operation $remove acbag.dummy *= acbag.const.256 acbag.dummy

scoreboard players operation $new_color acbag.dummy -= $remove acbag.dummy
scoreboard players operation $new_blue acbag.dummy = $new_color acbag.dummy

#Add colors together
scoreboard players operation $new_red acbag.dummy += $old_red acbag.dummy
scoreboard players operation $new_green acbag.dummy += $old_green acbag.dummy
scoreboard players operation $new_blue acbag.dummy += $old_blue acbag.dummy

scoreboard players operation $new_red acbag.dummy /= acbag.const.2 acbag.dummy
scoreboard players operation $new_green acbag.dummy /= acbag.const.2 acbag.dummy
scoreboard players operation $new_blue acbag.dummy /= acbag.const.2 acbag.dummy

#Convert back into decimal value
scoreboard players operation $new_red acbag.dummy *= acbag.const.65536 acbag.dummy
scoreboard players operation $new_green acbag.dummy *= acbag.const.256 acbag.dummy
scoreboard players operation $new_color acbag.dummy = $new_blue acbag.dummy
scoreboard players operation $new_color acbag.dummy += $new_green acbag.dummy
scoreboard players operation $new_color acbag.dummy += $new_red acbag.dummy

#Insert value into item
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get $new_color acbag.dummy

summon area_effect_cloud ~.5 ~1 ~.5 {Radius:0.000001f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:7,Tags:["acbag.particle"]}
execute at @s as @e[type=area_effect_cloud,tag=acbag.particle,tag=!acbag.setup,distance=..1] run function acbag:block/soul_cauldron/particle