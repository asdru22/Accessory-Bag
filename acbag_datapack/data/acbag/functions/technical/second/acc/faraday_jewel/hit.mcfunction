kill @e[type=lightning_bolt,distance=..3]
scoreboard players set acbag.heal acbag.dummy 5
function acbag:entity/player/heal/apply
execute store result score item acbag.dummy run clear @s #acbag:metal_armor 0
execute if score item acbag.dummy matches 1.. run function acbag:technical/second/acc/faraday_jewel/metal_armor
tag @s remove acbag.faraday_jewel