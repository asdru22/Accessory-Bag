############################################################
# Description: Calculates the damage a player has to have
# Creator: CreeperMagnet_
############################################################

execute store result score @s acbag.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score @s acbag.dummy2 run data get entity @s Health 10
execute if score acbag.damage acbag.dummy >= @s acbag.dummy2 run function acbag:entity/player/damage/death
scoreboard players operation @s acbag.dummy -= @s acbag.dummy2
scoreboard players operation @s acbag.dummy += acbag.damage acbag.dummy
