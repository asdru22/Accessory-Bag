############################################################
# Description: Calculates resistance into the damage formula
# Creator: ICY / CreeperMagnet_
############################################################

# Get the amplifier
execute store result score acbag.temp_0 acbag.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
scoreboard players add acbag.temp_0 acbag.dummy 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set acbag.temp_1 acbag.dummy 5
scoreboard players operation acbag.temp_1 acbag.dummy -= acbag.temp_0 acbag.dummy

scoreboard players operation acbag.damage acbag.dummy *= acbag.temp_1 acbag.dummy
scoreboard players operation acbag.damage acbag.dummy /= acbag.const.5 acbag.dummy
