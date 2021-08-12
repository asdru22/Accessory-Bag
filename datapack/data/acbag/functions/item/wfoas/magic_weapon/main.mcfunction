data modify storage acbag:storage root.temp.item set from entity @s SelectedItem
execute store result score acbag.damage acbag.dummy run data get storage acbag:storage root.temp.item.tag.acbag.MagicWeapon.Damage 100
execute store result score rc.cost acbag.dummy run data get storage acbag:storage root.temp.item.tag.acbag.MagicWeapon.Cost 10
execute store result score acbag.ignore_armor acbag.dummy run data get storage acbag:storage root.temp.item.tag.acbag.MagicWeapon.IgnoreArmor
execute if score @s acbag.cAstrolite >= rc.cost acbag.dummy run function acbag:item/wfoas/magic_weapon/list
scoreboard players set @e[type=#acbag:mobs,scores={acbag.light_dmg=1..}] acbag.light_dmg 0
scoreboard players set .wall acbag.dummy 0