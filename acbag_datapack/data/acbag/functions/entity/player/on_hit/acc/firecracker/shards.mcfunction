data modify storage acbag:storage root.temp.Motion set from entity @e[type=area_effect_cloud,limit=1,tag=acbag.temp.aec] Pos
summon arrow ^ ^ ^1 {PierceLevel:5b,Fire:2000s,damage:0d,crit:0b,Motion:[0.0d,0.0065d,0.0d]}
data modify entity @e[type=arrow,limit=1,nbt={Motion:[0.0d,0.0065d,0.0d]}] Motion set from storage acbag:storage root.temp.Motion
tp @s 0.0 0 0.0