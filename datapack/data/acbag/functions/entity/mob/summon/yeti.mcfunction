summon wither_skeleton ~ ~ ~ {ActiveEffects:[{Id:14b,Amplifier:1b,Duration:22222220,ShowParticles:0b}],Silent:1b,DeathLootTable:"acbag:entity/yeti",Health:50f,Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.knockback_resistance",Base:30},{Name:"generic.follow_range",Base:50}],Tags:["acbag.entity","acbag.custom_mob","acbag.entity.yeti"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900012}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900012}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6762296}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900011}}],ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],HandDropChances:[-1000.0f,-1000.0f]}
scoreboard players reset .spawn acbag.dummy
tp @s[type=!player] 0 -1000 0
kill @s[type=!player]
scoreboard players set .found acbag.dummy 1