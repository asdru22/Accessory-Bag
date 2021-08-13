execute if entity @s[type=#acbag:blocks,tag=acbag.block] run function acbag:entity/technical/block
execute if entity @s[type=trident,tag=!acbag.on_ground,tag=acbag.gale_trident,nbt={inGround:0b}] at @s run function acbag:entity/player/shoot/trident/acc/gale_trident/summon
execute if entity @s[type=armor_stand,tag=acbag.entity.tornado] at @s run function acbag:entity/player/actions/use_totem/tick

execute if entity @s[tag=acbag.has_particle] at @s run function acbag:entity/technical/particles