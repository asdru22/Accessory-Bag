item replace entity @s weapon.mainhand with air
give @s bucket
item replace entity @e[type=wandering_trader,distance=..10,tag=acbag.target,tag=acbag.soul_cauldron] armor.head with leather_horse_armor{CustomModelData:6900000,display:{color:880383}}
data modify storage acbag:storage root.temp.cauldron.HasWater set value 1b
execute at @s run playsound minecraft:item.bucket.empty neutral @a[distance=..10]