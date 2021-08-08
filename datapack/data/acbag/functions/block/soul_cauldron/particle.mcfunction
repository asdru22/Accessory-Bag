execute store result entity @s Color int 1 run scoreboard players get $new_color acbag.dummy
tag @s add acbag.setup
playsound minecraft:block.brewing_stand.brew block @a[distance=..10] ~ ~ ~ 1 .65