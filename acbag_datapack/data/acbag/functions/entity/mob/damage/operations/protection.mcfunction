############################################################
# Description: Calculates protection into the damage formula
# Creator: CreeperMagnet_
############################################################

# Get all armor values and add them together
execute store result score acbag.temp_0 acbag.dummy run data get entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation acbag.temp_1 acbag.dummy = acbag.temp_0 acbag.dummy
execute store result score acbag.temp_0 acbag.dummy run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation acbag.temp_1 acbag.dummy += acbag.temp_0 acbag.dummy
execute store result score acbag.temp_0 acbag.dummy run data get entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation acbag.temp_1 acbag.dummy += acbag.temp_0 acbag.dummy
execute store result score acbag.temp_0 acbag.dummy run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation acbag.temp_1 acbag.dummy += acbag.temp_0 acbag.dummy

# Make the damage number based on that

  # Multiply by 100 to maintain precision
scoreboard players operation acbag.temp_1 acbag.dummy *= acbag.const.100 acbag.dummy
  # Divide by 25 per the formula
scoreboard players operation acbag.temp_1 acbag.dummy /= acbag.const.25 acbag.dummy

  # Then subtract it all from 1 (100)

scoreboard players set acbag.temp_0 acbag.dummy 100
scoreboard players operation acbag.temp_0 acbag.dummy -= acbag.temp_1 acbag.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation acbag.damage acbag.dummy *= acbag.temp_0 acbag.dummy
scoreboard players operation acbag.damage acbag.dummy /= acbag.const.100 acbag.dummy
