advancement revoke @s only acbag:technical/killstreak
scoreboard players add @s acbag.ks 1
execute if entity @s[scores={acbag.ks=2..}] run effect give @s speed 7 0