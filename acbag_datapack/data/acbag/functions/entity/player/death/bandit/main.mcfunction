clear @s #acbag:all
data modify storage acbag:storage root.temp.Recipes set value []
function acbag:entity/player/death/bandit/init
execute as @e[type=vindicator,tag=acbag.entity.bandit] run function acbag:entity/mob/on_hit/bandit/main