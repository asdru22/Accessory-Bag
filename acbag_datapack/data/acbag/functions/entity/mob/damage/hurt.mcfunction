scoreboard players operation acbag.health acbag.dummy -= acbag.damage acbag.dummy 

effect give @s[type=#acbag:undead] instant_health 1 30 true
effect give @s[type=!#acbag:undead] instant_damage 1 30 true

execute store result entity @s Health float 0.01 run scoreboard players get acbag.health acbag.dummy