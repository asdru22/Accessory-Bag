setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"color":"white","font":"acbag:table","translate":"block.acbag.thinkery_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.acbag.thinkery_table"}]}'}
summon glow_item_frame ~ ~ ~ {NoGravity:1b,Silent:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["acbag.entity","acbag.block","acbag.thinkery_table","global.ignore","global.ignore.kill"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:6900000,acbag:{stored_slots:[]}}}}
kill @s