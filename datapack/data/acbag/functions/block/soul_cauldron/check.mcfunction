scoreboard players set .invalid acbag.dummy 0

execute unless entity @s[nbt={Facing:1b}] run function acbag:block/soul_cauldron/invalid
execute at @s unless block ~ ~-0.5 ~ soul_campfire run function acbag:block/soul_cauldron/invalid
execute if entity @e[type=wandering_trader,distance=..0.1,tag=acbag.soul_cauldron] run function acbag:block/soul_cauldron/invalid

execute if score .invalid acbag.dummy matches 0 run function acbag:block/soul_cauldron/summon

kill @s