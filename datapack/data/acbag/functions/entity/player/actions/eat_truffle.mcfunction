execute if entity @s[advancements={acbag:technical/eat_truffle={red_truffle=true}}] run effect give @s strength 10 0
execute if entity @s[advancements={acbag:technical/eat_truffle={blue_truffle=true}}] run effect give @s night_vision 17 0
execute if entity @s[advancements={acbag:technical/eat_truffle={green_truffle=true}}] run effect give @s jump_boost 13 1
execute if entity @s[advancements={acbag:technical/eat_truffle={purple_truffle=true}}] run effect give @s regeneration 11 1
execute if entity @s[advancements={acbag:technical/eat_truffle={white_truffle=true}}] run effect give @s slow_falling 12 1

advancement revoke @s only acbag:technical/eat_truffle
