schedule function acbag:second 1s replace

execute as @a run function acbag:technical/second/bag
execute as @a[tag=acbag.celestial_crystal] run function acbag:entity/player/astrolites/bag

execute at @a as @e[type=#acbag:entity,tag=acbag.entity,distance=..50] run function acbag:entity/second
