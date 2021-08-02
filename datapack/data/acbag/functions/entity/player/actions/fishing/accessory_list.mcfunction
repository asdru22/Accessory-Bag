scoreboard players set .sc_chance acbag.dummy 20
scoreboard players set acbag.max acbag.dummy 100
function acbag:technical/rng
execute if score .sc_chance acbag.dummy >= acbag.result acbag.dummy run function acbag:entity/player/actions/fishing/fish_mob