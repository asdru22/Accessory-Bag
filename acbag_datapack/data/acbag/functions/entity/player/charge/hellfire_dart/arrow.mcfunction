data merge entity @s {Fire:2000s}
tag @s add acbag.proj.hellfire_dart
execute if score $charge acbag.dummy matches 100.. run scoreboard players set $charge acbag.dummy 100
execute store result entity @s PierceLevel byte 0.05 run scoreboard players get $charge acbag.dummy