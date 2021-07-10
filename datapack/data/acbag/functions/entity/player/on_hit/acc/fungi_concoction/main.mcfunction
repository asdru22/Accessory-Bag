scoreboard players reset .fungi_concoction acbag.dummy
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["acbag.entity","acbag.growing_lichen"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900009}}]}
data merge entity @s {NoAI:1b}
tag @s add acbag.mob_in_growing_lichen
scoreboard players operation .temp acbag.dummy = @s acbag.id
execute as @e[type=armor_stand,tag=acbag.growing_lichen,tag=!acbag.setup] run function acbag:entity/player/on_hit/acc/fungi_concoction/lichen/setup