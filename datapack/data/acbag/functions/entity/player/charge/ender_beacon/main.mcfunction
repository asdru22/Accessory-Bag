tag @s add acbag.ticking.acc.ender_beacon

execute if entity @s[scores={acbag.pull=30}] at @s positioned ^1 ^ ^ run function acbag:entity/player/charge/ender_beacon/summon

execute if entity @s[scores={acbag.pull=50}] at @s positioned ^-1 ^ ^ run function acbag:entity/player/charge/ender_beacon/summon 

execute if entity @s[scores={acbag.pull=70}] at @s positioned ^ ^1 ^ run function acbag:entity/player/charge/ender_beacon/summon 