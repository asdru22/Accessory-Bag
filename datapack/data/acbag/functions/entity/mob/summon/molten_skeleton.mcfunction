summon wither_skeleton ~ ~ ~ {HandItems:[{id:'minecraft:stick',Count:1b,tag:{CustomModelData:6900000}},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:6900001}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900002}}]}
scoreboard players reset .spawn acbag.dummy
tp @s[type=!player] 0 -1000 0
kill @s[type=!player]
scoreboard players set .found acbag.dummy 1