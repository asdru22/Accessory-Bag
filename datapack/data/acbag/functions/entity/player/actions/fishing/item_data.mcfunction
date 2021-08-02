summon area_effect_cloud 0.0 0 0.0 {Tags:["acbag.temp.motion"]}
execute as @e[type=area_effect_cloud,tag=acbag.temp.motion] at @s run function acbag:entity/player/actions/fishing/motion
kill @s 
execute positioned ~ ~1 ~ run function acbag:entity/player/actions/fishing/mob_list