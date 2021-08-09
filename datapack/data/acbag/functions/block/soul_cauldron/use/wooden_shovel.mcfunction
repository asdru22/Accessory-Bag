execute store result score .mix acbag.dummy run data get storage acbag:storage root.temp.cauldron.Mixes
scoreboard players add .mix acbag.dummy 1
execute store result storage acbag:storage root.temp.cauldron.Mixes int 1 run scoreboard players get .mix acbag.dummy
playsound minecraft:block.water.ambient block @a[distance=..10] ~ ~ ~ 24300 2

particle minecraft:enchant ~.5 ~1 ~.5 0.3 0.5 0.3 0.01 15