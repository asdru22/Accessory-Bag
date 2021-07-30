#entity checks
execute at @a as @e[type=#acbag:entity,distance=..50] run function acbag:entity/tick
#player checks
execute as @a[gamemode=adventure,predicate=!acbag:hold_head,tag=acbag.head] run function acbag:entity/player/actions/player_head/surv
execute as @a[gamemode=survival,predicate=acbag:hold_head] run function acbag:entity/player/actions/player_head/adv
execute as @a[scores={acbag.useBow=1..}] run function acbag:entity/player/shoot/main
execute as @a[scores={acbag.useCbow=1..}] run function acbag:entity/player/shoot/main
execute as @a[scores={acbag.useTrident=1..}] run function acbag:entity/player/shoot/trident/main
execute as @a[scores={acbag.openBundle=1..}] run function acbag:item/accessory_bag/open
execute as @a[scores={acbag.wfoas=1..}] run function acbag:item/wfoas/main
execute as @a[tag=acbag.has_pulled] run function acbag:entity/player/charge/tick
execute as @a store result score @s acbag.dummy run data get entity @s Health 100
execute as @a[predicate=acbag:invisibility] run function acbag:entity/player/actions/invisibility_changed/lost
execute as @a[scores={acbag.manual=1..}] run function acbag:entity/player/book