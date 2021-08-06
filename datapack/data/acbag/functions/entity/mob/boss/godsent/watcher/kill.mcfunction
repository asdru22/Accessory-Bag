advancement revoke @s only acbag:technical/bosses/godsent/kill_watcher
data modify storage acbag:storage root.boss.godsent set value {Active:1b,Fase:1}
execute store result storage acbag:storage root.boss.godsent.Players int 1 run scoreboard players get acbag.boss.godsent.hit_watcher acbag.dummy

execute store result storage acbag:storage root.boss.godsent.MaxHp int 220 run scoreboard players get acbag.boss.godsent.hit_watcher acbag.dummy

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:1b,Invisible:1b,Tags:["acbag.marker","global.ignore"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6900020}}]}
execute as @e[type=armor_stand,tag=acbag.marker,distance=..0.1] run function acbag:entity/mob/boss/godsent/watcher/marker