execute at @s run summon armor_stand ~ ~ ~ {Tags:["acbag.temp.stand"],Invisible:1b,Invulnerable:1b,NoGravity:1b}
kill @s
execute as @e[type=armor_stand,tag=acbag.temp.stand] at @s run function acbag:entity/player/on_hit/acc/firecracker/setup