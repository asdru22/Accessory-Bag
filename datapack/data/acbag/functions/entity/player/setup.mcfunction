scoreboard players add .global acbag.id 1
scoreboard players operation @s acbag.id = .global acbag.id
loot give @s loot acbag:items/manual
scoreboard players enable @s acbag.manual