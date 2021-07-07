############################################################
# Description: Removes resistance and re-adds
# Creator: CreeperMagnet_
############################################################

execute store result score acbag.temp_0 acbag.dummy run data get storage acbag:storage root.temp.resistance_storage[0].Amplifier 1
execute store result score acbag.temp_1 acbag.dummy run data get storage acbag:storage root.temp.resistance_storage[0].Duration 0.05
execute store result score acbag.temp_2 acbag.dummy run data get storage acbag:storage root.temp.resistance_storage[0].ShowParticles 1
data remove storage acbag:storage root.temp.resistance_storage[0]
effect clear @s resistance
execute if score acbag.temp_0 acbag.dummy matches 0 run function acbag:entity/player/damage/reapply_resistance/0
execute if score acbag.temp_0 acbag.dummy matches 1 run function acbag:entity/player/damage/reapply_resistance/1
execute if score acbag.temp_0 acbag.dummy matches 2 run function acbag:entity/player/damage/reapply_resistance/2
execute if score acbag.temp_0 acbag.dummy matches 3 run function acbag:entity/player/damage/reapply_resistance/3
