scoreboard players reset .damage_meter acbag.dummy

#score: true_damage acbag.dummy
scoreboard players operation dec acbag.dummy = true_damage acbag.dummy
scoreboard players operation unit acbag.dummy = true_damage acbag.dummy
scoreboard players operation unit acbag.dummy /= acbag.const.100 acbag.dummy
scoreboard players operation dec acbag.dummy %= acbag.const.100 acbag.dummy


loot spawn ~ ~.5 ~ loot acbag:technical/damage_display
execute as @e[type=item,distance=..2,nbt={PickupDelay:10s}] run function acbag:entity/player/on_hit/acc/damage_meter/item
