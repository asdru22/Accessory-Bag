execute store result score .food acbag.dummy run data get entity @s foodLevel 10
execute if score .food acbag.dummy matches ..60 run function acbag:technical/second/acc/autofeeder/food