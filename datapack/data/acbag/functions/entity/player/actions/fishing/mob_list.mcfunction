scoreboard players set acbag.max acbag.dummy 2
function acbag:technical/rng
execute if score acbag.result acbag.dummy matches 1 run function acbag:entity/mob/summon/sea_goblin
execute if score acbag.result acbag.dummy matches 0 run function acbag:entity/mob/summon/seaweed_skeleton

execute as @e[type=#acbag:mobs,tag=!acbag.setup,tag=acbag.entity.sea_creature] run function acbag:entity/player/actions/fishing/setup