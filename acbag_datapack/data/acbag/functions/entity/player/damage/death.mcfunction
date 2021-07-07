############################################################
# Description: Kills the player if their health is too low
# Creator: CreeperMagnet_
############################################################

execute store result score @s acbag.dummy run gamerule showDeathMessages
execute if entity @s[scores={acbag.dummy=1}] run gamerule showDeathMessages false
kill @s[tag=!global.ignore.kill]
execute if entity @s[scores={acbag.dummy=1}] run tellraw @a {"translate":"death.acbag.whip","with":[{"selector":"@s"}]}

execute if entity @s[scores={acbag.dummy=1}] run gamerule showDeathMessages true



