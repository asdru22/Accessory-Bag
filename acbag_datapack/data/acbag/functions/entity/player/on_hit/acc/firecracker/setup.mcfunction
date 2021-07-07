tp @s ~ ~ ~ facing entity @e[type=#acbag:mobs,limit=1,tag=acbag.firecracker.hit] feet
execute rotated as @s run tp @s ~ ~ ~ ~180 0
execute rotated as @s run function acbag:entity/player/on_hit/acc/firecracker/rotation

kill @s