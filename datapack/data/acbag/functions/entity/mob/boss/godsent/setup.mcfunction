
execute store result entity @s Attributes[{Name:"generic.max_health"}].Base int 1 run data get storage acbag:storage root.boss.godsent.MaxHp
execute store result entity @s Health float 1 run data get storage acbag:storage root.boss.godsent.MaxHp

say setup