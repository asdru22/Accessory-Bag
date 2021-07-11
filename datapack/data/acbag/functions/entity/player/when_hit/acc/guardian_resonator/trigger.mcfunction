execute at @s store result score .count acbag.dummy if entity @e[type=#acbag:mobs,distance=..4,tag=!global.ignore]
execute if score .count acbag.dummy matches 1.. at @s run function acbag:entity/player/when_hit/acc/guardian_resonator/divide

scoreboard players set .acc acbag.dummy 1
data modify storage acbag:storage root.temp.AccArray insert 0 value '{"translate":"item.acbag.guardian_resonator","color":"green"}'
