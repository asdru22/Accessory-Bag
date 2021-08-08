execute store success score acbag.temp_0 acbag.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"color":"white","font":"acbag:table","translate":"block.acbag.thinkery_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.acbag.thinkery_table"}]}'}}}}]
execute if score acbag.temp_0 acbag.dummy matches 1.. run loot spawn ~ ~ ~ loot acbag:blocks/thinkery_table
particle minecraft:item item_frame{CustomModelData:6900000} ~ ~ ~ 0.5 0.6 0.5 0.05 50 normal
kill @s

kill @e[type=item,distance=..2,nbt={Item:{tag:{acbag:{CraftOutput:1b,GuiFixed:1b}}}}]