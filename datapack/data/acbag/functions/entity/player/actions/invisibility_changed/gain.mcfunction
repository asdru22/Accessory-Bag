data modify storage acbag:storage root.temp.Armor set value [{},{},{},{}]
data modify storage acbag:storage root.temp.Armor[0] set from entity @s Inventory[{Slot:100b}]
data modify storage acbag:storage root.temp.Armor[1] set from entity @s Inventory[{Slot:101b}]
data modify storage acbag:storage root.temp.Armor[2] set from entity @s Inventory[{Slot:102b}]
data modify storage acbag:storage root.temp.Armor[3] set from entity @s Inventory[{Slot:103b}]

item replace entity @s armor.head with stick{HideFlags:127,CustomModelData:6900010,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'""'}} 1
item replace entity @s armor.chest with stick{HideFlags:127,CustomModelData:6900010,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'""'}} 1
item replace entity @s armor.feet with stick{HideFlags:127,CustomModelData:6900010,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'""'}} 1
item replace entity @s armor.legs with stick{HideFlags:127,CustomModelData:6900010,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'""'}} 1
scoreboard players operation .uuid acbag.dummy = @s acbag.id
summon marker ~ ~ ~ 
advancement revoke @s only acbag:technical/gain_invisibility

tag @s add acbag.effect.invisibility

say gain invisi