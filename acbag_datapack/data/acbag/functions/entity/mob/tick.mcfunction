execute if entity @s[tag=!acbag.idset] run function acbag:entity/matching/assign_id
execute store result score @s acbag.dummy run data get entity @s Health 100