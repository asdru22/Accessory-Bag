loot give @s loot acbag:items/trapped_spirit
advancement grant @s only acbag:minecraft/soul_reaper
item replace entity @s weapon.mainhand with air
scoreboard players set rc.dist acbag.dummy 0
particle soul ~ ~ ~ 0 0.5 0 0.2 10
setblock ~ ~ ~ soul_soil
playsound minecraft:particle.soul_escape player @a[distance=..10] ~ ~ ~ 100 1.5