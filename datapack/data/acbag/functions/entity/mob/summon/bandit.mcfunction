summon vindicator ~ ~ ~ {Health:30f,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["acbag.entity.bandit"],CustomName:'{"translate":"entity.acbag.bandit"}',HandItems:[{id:'minecraft:iron_sword',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:6900003}}],Attributes:[{Name:generic.max_health,Base:30}]}
scoreboard players reset .spawn acbag.dummy
tp @s[type=!player] 0 -1000 0
kill @s[type=!player]
scoreboard players set .found acbag.dummy 1