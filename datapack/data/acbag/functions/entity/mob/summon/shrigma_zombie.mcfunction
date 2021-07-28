summon zombie ~ ~ ~ {DeathLootTable:"acbag:items/gigashroom",HandItems:[{id:'minecraft:stick',Count:1b,tag:{CustomModelData:6900007}},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:6900008}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900006}}]}
scoreboard players reset .spawn acbag.dummy
tp @s[type=!player] 0 -1000 0
kill @s[type=!player]
scoreboard players set .found acbag.dummy 1