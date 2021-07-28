summon husk ~ ~ ~ {DeathLootTable:"acbag:entity/wandering_spirit",Silent:1b,Health:25f,Tags:["acbag.entity","acbag.custom_mob","acbag.entity.wandering_soul"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900004}}],ArmorDropChances:[0.085F,0.085F,0.085F,-1000.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:100}]}
scoreboard players reset .spawn acbag.dummy
tp @s[type=!player] 0 -1000 0
kill @s[type=!player]
scoreboard players set .found acbag.dummy 1