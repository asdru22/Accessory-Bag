scoreboard players set .spawn acbag.dummy 1

execute if score .found acbag.dummy matches 0 if entity @s[type=piglin,predicate=acbag:chance/5] at @s run function acbag:entity/mob/summon/molten_skeleton
execute if score .found acbag.dummy matches 0 if entity @s[type=villager,predicate=acbag:chance/5,nbt={Age:0}] at @s run function acbag:entity/mob/summon/bandit
execute if score .found acbag.dummy matches 0 if predicate acbag:chance/5 at @s if predicate acbag:location/soul_sand_valley run function acbag:entity/mob/summon/wandering_soul
execute if score .found acbag.dummy matches 0 if entity @s[type=mooshroom,predicate=acbag:chance/10] at @s run function acbag:entity/mob/summon/shrigma_zombie
execute if score .found acbag.dummy matches 0 if entity @s[predicate=acbag:chance/10,predicate=acbag:location/cold_biome] at @s run function acbag:entity/mob/summon/yeti

execute if score .spawn acbag.dummy matches 1 run function acbag:entity/matching/assign_id
scoreboard players set .found acbag.dummy 0
