scoreboard players reset @s acbag.dummy2
tag @s remove acbag.recipe_found

scoreboard players remove $slot2 acbag.dummy 1
scoreboard players remove $slot3 acbag.dummy 1
scoreboard players remove $slot4 acbag.dummy 1
scoreboard players remove $slot11 acbag.dummy 1 
scoreboard players remove $slot12 acbag.dummy 1
scoreboard players remove $slot13 acbag.dummy 1
scoreboard players remove $slot20 acbag.dummy 1
scoreboard players remove $slot21 acbag.dummy 1
scoreboard players remove $slot22 acbag.dummy 1

execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $slot2 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get $slot3 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get $slot4 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get $slot11 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get $slot12 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get $slot13 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get $slot20 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get $slot21 acbag.dummy
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get $slot22 acbag.dummy