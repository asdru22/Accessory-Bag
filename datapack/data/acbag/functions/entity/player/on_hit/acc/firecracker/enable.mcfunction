data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.firecracker","color":"red"}'
scoreboard players set .acc acbag.dummy 1
scoreboard players set .firecracker acbag.dummy 1
scoreboard players remove @s acbag.cAstrolite 150

scoreboard players operation temp acbag.id = @s acbag.id
execute as @e[type=arrow,tag=!global.ignore,nbt={inGround:0b}] if score @s acbag.id = temp acbag.id run function acbag:entity/player/on_hit/acc/firecracker/arrow