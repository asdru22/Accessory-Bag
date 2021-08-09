item replace entity @s[gamemode=survival] weapon.mainhand with air
give @s[gamemode=survival] bucket
item replace entity @e[type=wandering_trader,distance=..10,tag=acbag.target,tag=acbag.soul_cauldron] armor.head with leather_horse_armor{CustomModelData:6900000,display:{color:880383}}
data modify storage acbag:storage root.temp.cauldron set value {HasWater:1b,Items:[]}
execute at @s run playsound minecraft:item.bucket.empty neutral @a[distance=..10]