data modify storage acbag:storage root.temp.Armor set value [{},{},{},{}]
data modify storage acbag:storage root.temp.Armor[3] set from entity @s Inventory[{Slot:103b}]
data modify storage acbag:storage root.temp.Armor[2] set from entity @s Inventory[{Slot:102b}]
data modify storage acbag:storage root.temp.Armor[1] set from entity @s Inventory[{Slot:101b}]
data modify storage acbag:storage root.temp.Armor[0] set from entity @s Inventory[{Slot:100b}]

scoreboard players operation .uuid acbag.dummy = @s acbag.id
summon marker ~ ~ ~ {Tags:["acbag.armor_storage"]}
execute as @e[type=marker,tag=!global.ignore,tag=acbag.armor_storage] run function acbag:entity/player/actions/invisibility_changed/data

tag @s add acbag.effect.invisibility

execute store result score tot acbag.dummy run attribute @s generic.armor get 100
execute store result score base acbag.dummy run attribute @s generic.armor base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .armor acbag.dummy = tot acbag.dummy

execute store result score tot acbag.dummy run attribute @s generic.max_health get 100
execute store result score base acbag.dummy run attribute @s generic.max_health base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .max_health acbag.dummy = tot acbag.dummy

execute store result score tot acbag.dummy run attribute @s generic.movement_speed get 100
execute store result score base acbag.dummy run attribute @s generic.movement_speed base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .movement_speed acbag.dummy = tot acbag.dummy

execute store result score tot acbag.dummy run attribute @s generic.attack_damage get 100
execute store result score base acbag.dummy run attribute @s generic.attack_damage base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .attack_damage acbag.dummy = tot acbag.dummy

execute store result score tot acbag.dummy run attribute @s generic.knockback_resistance get 100
execute store result score base acbag.dummy run attribute @s generic.knockback_resistance base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .knockback_resistance acbag.dummy = tot acbag.dummy

execute store result score tot acbag.dummy run attribute @s generic.armor_toughness get 100
execute store result score base acbag.dummy run attribute @s generic.armor_toughness base get 100
scoreboard players operation tot acbag.dummy -= base acbag.dummy 
execute unless score tot acbag.dummy matches 0 run scoreboard players operation .armor_toughness acbag.dummy = tot acbag.dummy

item replace entity @s armor.chest with air
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
loot replace entity @s armor.head loot acbag:technical/invis_head