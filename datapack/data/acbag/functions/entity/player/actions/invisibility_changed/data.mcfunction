tag @s add acbag.setup
data modify entity @s data.Armor set from storage acbag:storage root.temp.Armor
scoreboard players operation @s acbag.id = .uuid acbag.dummy