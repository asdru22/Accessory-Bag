data remove storage acbag:storage root.temp.sword
data modify storage acbag:storage root.temp.sword set from entity @s SelectedItem.tag.Items
execute if data storage acbag:storage root.temp.sword run function acbag:entity/player/on_hit/sword/list
execute if score acbag.damage acbag.dummy matches 1.. run execute store result score dmg_att acbag.dummy run attribute @s minecraft:generic.attack_damage get 100