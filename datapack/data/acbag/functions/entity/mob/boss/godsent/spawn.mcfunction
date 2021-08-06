bossbar add acbag:boss {"text":"\uFFF1","font":"acbag:main","color":"white"}
bossbar set acbag:boss players @a[tag=acbag.boss.godsent.hit_watcher]
bossbar set acbag:boss color pink
execute store result bossbar acbag:boss max run data get storage acbag:storage root.boss.godsent.MaxHp
execute store result bossbar acbag:boss value run data get storage acbag:storage root.boss.godsent.MaxHp

execute as @e[type=armor_stand,tag=acbag.marker] at @s run function acbag:entity/mob/boss/godsent/summon
