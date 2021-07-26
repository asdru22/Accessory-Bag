
data modify entity @s ArmorItems set from storage acbag:storage root.temp.Armor
item replace entity @p[tag=acbag.temp.me] armor.head from entity @s armor.head
item replace entity @p[tag=acbag.temp.me] armor.chest from entity @s armor.chest
item replace entity @p[tag=acbag.temp.me] armor.legs from entity @s armor.legs
item replace entity @p[tag=acbag.temp.me] armor.feet from entity @s armor.feet
kill @s