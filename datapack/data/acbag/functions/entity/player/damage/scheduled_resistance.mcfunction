############################################################
# Description: Removes resistance
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=acbag.scheduled.resistance] run function acbag:entity/player/damage/remove_resistance
tag @a remove acbag.scheduled.resistance
