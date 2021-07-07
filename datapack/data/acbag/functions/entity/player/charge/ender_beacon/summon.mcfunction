tag @s add acbag.acc.ender_beacon
scoreboard players operation uuid acbag.dummy = @s acbag.id
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["acbag.acc.ender_beacon.marker","global.ignore","global.ignore.kill"],ArmorItems:[{},{},{},{id:"minecraft:purple_stained_glass",Count:1b}]}
execute as @e[type=armor_stand,tag=acbag.acc.ender_beacon.marker,tag=!acbag.entity.setup] run function acbag:entity/player/charge/ender_beacon/entity_setup
playsound minecraft:block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 100 1.6