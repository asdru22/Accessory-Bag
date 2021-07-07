execute store result score acbag.mot0 acbag.dummy run data get entity @s Motion[0] 100
execute store result score acbag.mot1 acbag.dummy run data get entity @s Motion[1] 100
execute store result score acbag.mot2 acbag.dummy run data get entity @s Motion[2] 100

scoreboard players operation acbag.mot0 acbag.dummy *= $acbag.mult acbag.dummy
scoreboard players operation acbag.mot1 acbag.dummy *= $acbag.mult acbag.dummy
scoreboard players operation acbag.mot2 acbag.dummy *= $acbag.mult acbag.dummy

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get acbag.mot0 acbag.dummy
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get acbag.mot1 acbag.dummy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get acbag.mot2 acbag.dummy