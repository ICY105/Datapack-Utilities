scoreboard players operation @s du_move_x = $crafting.temp_0 du_data
scoreboard players set @s du_data 0

scoreboard players set $crafting.temp_0 du_data 0
execute if score @s du_move_x = @s du_move_y run scoreboard players set $crafting.temp_0 du_data 1
execute if score @s du_move_y matches 0 unless block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:2b}]} run scoreboard players set $crafting.temp_0 du_data 1

execute store result score $crafting.temp_1 du_data unless block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b}]} run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score $crafting.temp_1 du_data if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b}]} run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score $crafting.temp_0 du_data matches 1 if score $crafting.temp_1 du_data matches 1 run function du:custom_furnace/check_out_stackable
execute if score $crafting.temp_0 du_data matches 1 if score $crafting.temp_1 du_data matches 16 run function du:custom_furnace/check_out_stackable_16
execute if score $crafting.temp_0 du_data matches 1 if score $crafting.temp_1 du_data matches 64 run scoreboard players set @s du_move_y -1
execute if score $crafting.temp_0 du_data matches 1 if score $crafting.temp_1 du_data matches 64 run scoreboard players set $crafting.temp_0 du_data 0

execute if score $crafting.temp_0 du_data matches 1 if block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s,Items:[{Slot:1b}]} run function du:custom_furnace/fuel
execute if score $crafting.temp_0 du_data matches 1 unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run tag @s add du_fur_active
