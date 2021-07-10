execute store result score true_damage acbag.dummy run data get entity @s Health -100
scoreboard players operation true_damage acbag.dummy += @s acbag.dummy
# .charge acbag.dummy to 0 if ignores charge

execute if entity @s[tag=acbag.custom_mob] run function acbag:entity/mob/when_hit/custom/main

execute if score acbag.damage acbag.dummy matches 1.. run function acbag:entity/mob/when_hit/damage_apply
tellraw @a[tag=acbag.debug] [{"text":"extra Damage: "},{"score":{"name":"acbag.damage","objective":"acbag.dummy"}}]

scoreboard players operation true_damage acbag.dummy += acbag.damage acbag.dummy

tellraw @a[tag=acbag.debug] [{"text":"TOtal Damage: "},{"score":{"name":"true_damage","objective":"acbag.dummy"}}]

function acbag:entity/mob/when_hit/player_effects
scoreboard players reset acbag.damage acbag.dummy