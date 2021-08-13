scoreboard objectives add acbag.dummy dummy
scoreboard objectives add acbag.dummy2 dummy
scoreboard objectives add acbag.pull dummy
scoreboard objectives add acbag.prev.pull dummy
scoreboard objectives add acbag.cAstrolite dummy
scoreboard objectives add acbag.mAstrolite dummy
scoreboard objectives add acbag.pAstrolite dummy
scoreboard objectives add acbag.light_dmg dummy
scoreboard objectives add acbag.ks dummy

scoreboard objectives add acbag.manual trigger

scoreboard objectives add acbag.useBow minecraft.used:minecraft.bow
scoreboard objectives add acbag.useCbow minecraft.used:minecraft.crossbow
scoreboard objectives add acbag.useTrident minecraft.used:minecraft.trident
scoreboard objectives add acbag.openBundle minecraft.used:minecraft.bundle
scoreboard objectives add acbag.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add acbag.dmgBlocked minecraft.custom:minecraft.damage_blocked_by_shield

scoreboard players set acbag.vs_fix acbag.dummy 1 
scoreboard players set acbag.const.-1 acbag.dummy -1
scoreboard players set acbag.const.2 acbag.dummy 2
scoreboard players set acbag.const.3 acbag.dummy 3
scoreboard players set acbag.const.4 acbag.dummy 4
scoreboard players set acbag.const.5 acbag.dummy 5
scoreboard players set acbag.const.10 acbag.dummy 10
scoreboard players set acbag.const.16 acbag.dummy 16
scoreboard players set acbag.const.20 acbag.dummy 20
scoreboard players set acbag.const.25 acbag.dummy 25
scoreboard players set acbag.const.60 acbag.dummy 60
scoreboard players set acbag.const.100 acbag.dummy 100
scoreboard players set acbag.const.256 acbag.dummy 256
scoreboard players set acbag.const.1000 acbag.dummy 1000
scoreboard players set acbag.const.65536 acbag.dummy 65536

execute unless score acbag.seed acbag.dummy matches -2147483648.. run scoreboard players set acbag.seed acbag.dummy 731031
scoreboard players set acbag.mult acbag.dummy 1664525
scoreboard players set acbag.incr acbag.dummy 1013904223

scoreboard objectives add acbag.id dummy
scoreboard objectives add acbag.id.0 dummy
scoreboard objectives add acbag.id.1 dummy
scoreboard objectives add acbag.id.2 dummy
scoreboard objectives add acbag.id.3 dummy
scoreboard objectives add acbag.id.4 dummy
scoreboard objectives add acbag.id.5 dummy
scoreboard objectives add acbag.id.6 dummy
scoreboard objectives add acbag.id.7 dummy
scoreboard objectives add acbag.id.8 dummy
scoreboard objectives add acbag.id.9 dummy
scoreboard objectives add acbag.id.10 dummy
scoreboard objectives add acbag.id.11 dummy
scoreboard objectives add acbag.id.12 dummy
scoreboard objectives add acbag.id.13 dummy
scoreboard objectives add acbag.id.14 dummy
scoreboard objectives add acbag.id.15 dummy
scoreboard objectives add acbag.id.16 dummy
scoreboard objectives add acbag.id.17 dummy
scoreboard objectives add acbag.id.18 dummy
scoreboard objectives add acbag.id.19 dummy
scoreboard objectives add acbag.id.20 dummy
scoreboard objectives add acbag.id.21 dummy
scoreboard objectives add acbag.id.22 dummy
scoreboard objectives add acbag.id.23 dummy
scoreboard objectives add acbag.id.24 dummy
scoreboard objectives add acbag.id.25 dummy
scoreboard objectives add acbag.id.26 dummy
scoreboard objectives add acbag.id.27 dummy
scoreboard objectives add acbag.id.28 dummy
scoreboard objectives add acbag.id.29 dummy
scoreboard objectives add acbag.id.30 dummy
scoreboard objectives add acbag.id.31 dummy

schedule function acbag:second 1s replace
gamerule keepInventory true

tellraw @a[tag=acbag.debug] {"text":"Loaded!","color":"yellow"}