tag @s remove acbag.temp
data modify entity @s Tags set from storage acbag:storage root.temp.entity.Tags
data modify entity @s Offers.Recipes set from storage acbag:storage root.temp.Recipes
data modify entity @s Health set from storage acbag:storage root.temp.entity.Health
item replace entity @s armor.head with stick{CustomModelData:6900003}
data merge entity @s {ArmorDropChances:[-1000.000F,-1000.000F,-1000.000F,-1000.000F],HandDropChances:[-1000.000F,-1000.000F]}