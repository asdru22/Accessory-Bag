execute if entity @s[nbt={SelectedItem:{id:"minecraft:repeating_command_block",tag:{acbag:{brewable:1b}}}}] run function acbag:block/soul_cauldron/hold_brewable
execute if entity @s[predicate=acbag:item/brewable] run function acbag:block/soul_cauldron/hold_brewable
advancement revoke @s only acbag:technical/block/soul_cauldron