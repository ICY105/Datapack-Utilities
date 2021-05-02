
data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:2b}]

execute if data storage du:temp obj{id:"minecraft:written_book"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:bucket"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:snowball"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:egg"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:ender_pearl"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:armor_stand"} run scoreboard players set $crafting.temp_0 du_data 0

execute if data storage du:temp obj{id:"minecraft:white_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:orange_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:magenta_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:light_blue_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:yellow_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:lime_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:pink_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:gray_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:light_gray_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:cyan_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:purple_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:blue_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:brown_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:green_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:red_banner"} run scoreboard players set $crafting.temp_0 du_data 0
execute if data storage du:temp obj{id:"minecraft:black_banner"} run scoreboard players set $crafting.temp_0 du_data 0

execute if score $crafting.temp_0 du_data matches 0 run scoreboard players set @s du_move_y -1