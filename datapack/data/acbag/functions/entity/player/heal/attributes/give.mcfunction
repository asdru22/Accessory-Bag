tag @s add acbag.applied_damage
#tellraw @p {"score":{"name":"acbag.heal","objective":"acbag.dummy"}}
execute if score acbag.heal acbag.dummy matches 1024.. run function acbag:entity/player/heal/attributes/1024
execute if score acbag.heal acbag.dummy matches 512.. run function acbag:entity/player/heal/attributes/512
execute if score acbag.heal acbag.dummy matches 256.. run function acbag:entity/player/heal/attributes/256
execute if score acbag.heal acbag.dummy matches 128.. run function acbag:entity/player/heal/attributes/128
execute if score acbag.heal acbag.dummy matches 64.. run function acbag:entity/player/heal/attributes/64
execute if score acbag.heal acbag.dummy matches 32.. run function acbag:entity/player/heal/attributes/32
execute if score acbag.heal acbag.dummy matches 16.. run function acbag:entity/player/heal/attributes/16
execute if score acbag.heal acbag.dummy matches 8.. run function acbag:entity/player/heal/attributes/8
execute if score acbag.heal acbag.dummy matches 4.. run function acbag:entity/player/heal/attributes/4
execute if score acbag.heal acbag.dummy matches 2.. run function acbag:entity/player/heal/attributes/2
execute if score acbag.heal acbag.dummy matches 1.. run function acbag:entity/player/heal/attributes/1