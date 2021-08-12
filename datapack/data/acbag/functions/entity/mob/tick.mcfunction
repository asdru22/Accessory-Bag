execute store result score @s acbag.dummy run data get entity @s Health 100

execute if entity @s[tag=acbag.custom_mob,tag=acbag.entity.mob.hurt,nbt={HurtTime:0s}] run function acbag:entity/mob/custom/tick