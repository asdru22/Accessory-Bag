loot give @s loot acbag:items/tar_bottle
item replace entity @s weapon.mainhand with air
scoreboard players set rc.dist acbag.dummy 0
particle smoke ~ ~ ~ 0 0.5 0 0.2 10
execute if block ~ ~ ~ coal_ore run setblock ~ ~ ~ stone
execute if block ~ ~ ~ deepslate_coal_ore run setblock ~ ~ ~ deepslate
playsound minecraft:block.fire.extinguish player @a[distance=..10] ~ ~ ~ 100 .5