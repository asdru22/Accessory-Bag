scoreboard players operation dmg.blocked acbag.dummy = @s acbag.dmgBlocked
scoreboard players set acbag.max acbag.dummy 100
function acbag:technical/rng
execute if score acbag.result acbag.dummy < dmg.blocked acbag.dummy run function acbag:entity/player/when_hit/acc/guardian_resonator/trigger