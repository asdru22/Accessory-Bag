execute at @p run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{acbag:{temp:1b}}}}
data modify entity @e[type=item,nbt={Item:{tag:{acbag:{temp:1b}}}},limit=1] Item set from block ~ ~ ~ Items[{Slot:16b}]
clear @p #acbag:all{acbag:{CraftOutput:1b}}