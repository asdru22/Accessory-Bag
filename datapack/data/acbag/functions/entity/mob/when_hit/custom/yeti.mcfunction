data merge entity @s {HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900014}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900014}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5753974}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5753974}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5753974}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900013}}]}
execute at @s run playsound acbag:entity.yeti.when_hit hostile @a[distance=..10] ~ ~ ~ .5 1.25
scoreboard players set .found acbag.dummy 1
tag @s add acbag.entity.mob.hurt