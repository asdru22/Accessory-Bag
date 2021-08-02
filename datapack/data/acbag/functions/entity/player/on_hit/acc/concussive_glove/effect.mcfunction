scoreboard players reset .concussive_glove acbag.dummy
data modify storage acbag:storage root.temp.item set from entity @s HandItems[0]
execute at @s run summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stone",tag:{acbag:{temp:1b}}}}
execute as @e[type=item,limit=1,nbt={Item:{tag:{acbag:{temp:1b}}}}] run data modify entity @s Item set from storage acbag:storage root.temp.item
data remove entity @s HandItems[0]