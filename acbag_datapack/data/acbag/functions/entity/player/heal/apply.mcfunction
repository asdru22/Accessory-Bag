execute store result score #maximum_health acbag.dummy run attribute @s generic.max_health get
execute store result score #current_health acbag.dummy run data get entity @s Health
scoreboard players operation acbag.heal acbag.dummy -= #maximum_health acbag.dummy
scoreboard players operation acbag.heal acbag.dummy += #current_health acbag.dummy

scoreboard players operation acbag.heal acbag.dummy *= acbag.const.-1 acbag.dummy


function acbag:entity/player/heal/attributes/give
effect give @s instant_health 1 24 true
schedule function acbag:entity/player/heal/attributes/schedule 1t
