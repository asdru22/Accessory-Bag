tag @s remove acbag.entity.mob.hurt

execute if entity @s[tag=acbag.entity.wandering_soul] run item replace entity @s armor.head with stick{CustomModelData:6900004}

execute if entity @s[tag=acbag.entity.yeti] run data merge entity @s {HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900012}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900012}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900011}}]}