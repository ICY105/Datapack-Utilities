tag @s remove du_fur_active
scoreboard players operation @s du_move_y = @s du_move_x
data merge block ~ ~ ~ {CookTime:0s}

execute store result score $crafting.temp_0 du_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players operation $crafting.in_0 du_data = @s du_move_x
execute if block ~ ~ ~ minecraft:furnace run function #du:recipes/furnace
execute if block ~ ~ ~ minecraft:blast_furnace run function #du:recipes/blast_furnace
execute if block ~ ~ ~ minecraft:smoker run function #du:recipes/smoker
execute store result score $crafting.temp_1 du_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

scoreboard players operation $crafting.temp_0 du_data += $crafting.temp_1 du_data
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $crafting.temp_0 du_data

execute store result score $crafting.temp_0 du_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
scoreboard players remove $crafting.temp_0 du_data 1
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get $crafting.temp_0 du_data
