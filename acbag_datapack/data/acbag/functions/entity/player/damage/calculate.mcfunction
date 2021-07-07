# acbag.damage acbag.dummy: damage to add to entity, to 1 decimal place, negative if ignores armor
# acbag.ignore_armor acbag.dummy: 1 if ignores armor, 0 if doesn't

function acbag:item/whip/abilities/as_hit_entity

 ## Insert Armor Values (Not part of formula)


execute unless score acbag.temp_0 acbag.dummy matches 0 unless score acbag.ignore_armor acbag.dummy matches 1 run function acbag:entity/player/damage/operations/armor
execute unless score acbag.temp_0 acbag.dummy matches 0 unless score acbag.ignore_armor acbag.dummy matches 1 run function acbag:entity/player/damage/operations/protection
execute if data entity @s ActiveEffects[{Id:11b}] run function acbag:entity/player/damage/operations/resistance
function acbag:entity/player/damage/calculate_attributes
function acbag:entity/player/damage/apply_damage

tag @s remove acbag.hit