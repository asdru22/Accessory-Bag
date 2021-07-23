scoreboard players reset .buzzing_crown acbag.dummy
execute at @s run summon bee ~ ~ ~ {AngerTime:2000,Tags:["acbag.entity","acbag.acc.buzzing_crown.bee"],Attributes:[{Name:"generic.attack_damage",Base:1}]}
execute as @e[type=bee,tag=acbag.acc.buzzing_crown.bee,tag=!acbag.setup] run function acbag:entity/mob/on_hit/acc/buzzing_crown/bee