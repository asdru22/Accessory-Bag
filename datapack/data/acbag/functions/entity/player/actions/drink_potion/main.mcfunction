advancement revoke @s only acbag:technical/drink_potion
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion"}]}] run function acbag:entity/player/actions/drink_potion/check_schedule