############################################################
# Description: Calculates armor into the damage formula
# Creator: ICY / CreeperMagnet_
############################################################

# acbag.damage acbag.dummy: damage to add to entity, to 1 decimal place (x10)


  ## https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0e/ArmorDamageFormula.svg/revision/latest/scale-to-width-down/668?cb=20190728042948
  ## FORMULA:
  ## damage = damage * (1 - (min(20,max(armor ÷ 5 , ATF))) ÷ 25)


 ## Insert Armor Toughness
  execute store result score acbag.temp_1 acbag.dummy run attribute @s minecraft:generic.armor_toughness get 10

  # Create value for first portion of max(armor ÷ 5, ATF)
  # This leads to armor ÷ 5 being stored in acbag.temp_2
scoreboard players operation acbag.temp_2 acbag.dummy = acbag.temp_0 acbag.dummy
scoreboard players operation acbag.temp_2 acbag.dummy /= acbag.const.5 acbag.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT

  # Create values for second portion of max(armor ÷ 5, ATF) (ATF)
  # This is the armor toughness formula calculation. It is nasty.
  # It is equal to: (armor - damage ÷ (2 + (toughness ÷ 4)))



  # Assign Temporary Values from the semi-permanent values.

  # Armor
scoreboard players operation acbag.temp_3 acbag.dummy = acbag.temp_0 acbag.dummy
  # Damage
scoreboard players operation acbag.temp_4 acbag.dummy = acbag.damage acbag.dummy
  # Armor Toughness
scoreboard players operation acbag.temp_5 acbag.dummy = acbag.temp_1 acbag.dummy


  # Divide by 4 (working inside -> out), so (toughness ÷ 4) first.
  # acbag.const.4 always has the value of 4.

scoreboard players operation acbag.temp_5 acbag.dummy /= acbag.const.4 acbag.dummy


  # Then we add 2 to that, again working inside -> out. (2 + (toughness ÷ 4))

scoreboard players add acbag.temp_5 acbag.dummy 20


  # Then, divide the damage by that value. (damage ÷ (2 + (toughness ÷ 4)))

scoreboard players operation acbag.temp_4 acbag.dummy /= acbag.temp_5 acbag.dummy
scoreboard players operation acbag.temp_4 acbag.dummy *= acbag.const.10 acbag.dummy

  # Then subtract that value from armor, and you have the final result of the armor toughness formula.

scoreboard players operation acbag.temp_3 acbag.dummy -= acbag.temp_4 acbag.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT



 # The next portion of this massive garbage heap of a formula. The max(armor ÷ 5, ATF). We've already calculated both, so we can just put them in here, and take the greatest one.
 # acbag.temp_2 = armor ÷ 5
 # acbag.temp_3 = Armor Toughness Formula results

execute if score acbag.temp_3 acbag.dummy > acbag.temp_2 acbag.dummy run scoreboard players operation acbag.temp_2 acbag.dummy = acbag.temp_3 acbag.dummy


 # Then the next part, the min(20, max(whatever was in last step)). If >20, it equals 20.
 # acbag.temp_2 = The results from last step, carried over.

execute if score acbag.temp_2 acbag.dummy matches 200.. run scoreboard players set acbag.temp_2 acbag.dummy 200



 # The REALLY MESSY MATH

  # Multiply by 10 to maintain precision
scoreboard players operation acbag.temp_2 acbag.dummy *= acbag.const.10 acbag.dummy
  # Divide by 25 per the formula
scoreboard players operation acbag.temp_2 acbag.dummy /= acbag.const.25 acbag.dummy

  # Then subtract it all from 1 (100)

scoreboard players set acbag.temp_0 acbag.dummy 100
scoreboard players operation acbag.temp_0 acbag.dummy -= acbag.temp_2 acbag.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation acbag.damage acbag.dummy *= acbag.temp_0 acbag.dummy
scoreboard players operation acbag.damage acbag.dummy /= acbag.const.100 acbag.dummy
