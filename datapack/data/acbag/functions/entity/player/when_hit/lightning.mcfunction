advancement revoke @s only acbag:technical/hit_by_lightning
execute if entity @s[tag=acbag.faraday_jewel] run function acbag:technical/second/acc/faraday_jewel/hit
execute if entity @s[predicate=acbag:item/jar] run loot replace entity @s weapon.mainhand loot acbag:items/lightning_in_a_bottle