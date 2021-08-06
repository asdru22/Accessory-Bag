scoreboard players set .distance acbag.dummy 8
function acbag:block/soul_cauldron/cast
advancement revoke @s only acbag:technical/block/soul_cauldron
tag @e[type=wandering_trader,distance=..10,tag=acbag.target,tag=acbag.soul_cauldron] remove acbag.target