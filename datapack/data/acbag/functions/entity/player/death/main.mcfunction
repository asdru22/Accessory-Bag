data modify storage acbag:storage root.temp.Inventory set from entity @s Inventory
execute if entity @s[advancements={acbag:technical/death={bandit=true}}] run function acbag:entity/player/death/bandit/main
execute if data storage acbag:storage root.temp.Inventory[] run function acbag:entity/player/death/bundle

clear @s #acbag:all_but_bundle
execute if data storage acbag:storage root.temp.Inventory[] run function acbag:entity/player/death/drop

execute store result score #XpLevel acbag.dummy run data get entity @s XpLevel
scoreboard players set #pointsPerLevel acbag.dummy 7
scoreboard players operation #XpLevel acbag.dummy *= #pointsPerLevel acbag.dummy
execute if score #XpLevel acbag.dummy matches 101.. run scoreboard players set #XpLevel acbag.dummy 100
summon minecraft:experience_orb ~ ~0.2 ~ {Tags:["acbag.DeathXP","global.ignore","global.ignore.kill"]}
execute store result entity @e[type=minecraft:experience_orb,tag=acbag.DeathXP,limit=1] Value short 1 run scoreboard players get #XpLevel acbag.dummy
tag @e[type=minecraft:experience_orb,tag=acbag.DeathXP] remove acbag.DeathXP
xp set @s 0 levels
xp set @s 0 points

kill @e[type=item,nbt={PickupDelay:40s,Item:{tag:{Items:[{tag:{ctc:{id:"soulbound_trinket",from:"asdru:accessory_bag"}}}]}}}]
scoreboard players set .playerdeath acbag.dummy 1
advancement revoke @s only acbag:technical/death