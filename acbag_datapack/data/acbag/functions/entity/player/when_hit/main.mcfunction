execute store result score temp.hp acbag.dummy run data get entity @s Health 100
execute store result score damage_recived acbag.dummy run scoreboard players operation @s acbag.dummy -= temp.hp acbag.dummy

function acbag:entity/player/when_hit/accessory_list

execute if entity @s[advancements={acbag:technical/when_hit={target=true}}] run function acbag:entity/player/when_hit/find_entity

advancement revoke @s only acbag:technical/when_hit