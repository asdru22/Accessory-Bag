item replace entity @s armor.head with stick{CustomModelData:6900005}
execute at @s run playsound acbag:entity.wandering_soul.when_hit hostile @a[distance=..10] ~ ~ ~ 1 2
scoreboard players set .found acbag.dummy 1
tag @s add acbag.entity.mob.hurt