execute store result score .hp acbag.dummy run data get entity @s Health 100
execute if score .hp acbag.dummy matches ..400 run function acbag:entity/player/when_hit/acc/fleeing_artifact/trigger