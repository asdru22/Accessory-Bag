scoreboard players set lightning.damage acbag.dummy 0
execute if predicate acbag:metal_helmet run scoreboard players add lightning.damage acbag.dummy 150
execute if predicate acbag:metal_chestplate run scoreboard players add lightning.damage acbag.dummy 250
execute if predicate acbag:metal_leggings run scoreboard players add lightning.damage acbag.dummy 200
execute if predicate acbag:metal_boots run scoreboard players add lightning.damage acbag.dummy 100
scoreboard players operation @s acbag.light_dmg = lightning.damage acbag.dummy