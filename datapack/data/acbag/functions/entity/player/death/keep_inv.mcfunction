execute if entity @s[tag=!acbag.effect.blessed_water] run function acbag:entity/player/death/main
advancement revoke @s only acbag:technical/death

execute if entity @s[tag=acbag.effect.blessed_water] run function acbag:entity/player/death/blessed_water