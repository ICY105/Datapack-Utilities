scoreboard players add @s du_data 1
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s du_data

execute if block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s,Items:[{Slot:1b}]} run function du:custom_furnace/fuel
execute if block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run tag @s remove du_fur_active

execute unless block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:0b}]} run tag @s remove du_fur_active

execute store result score $crafting.temp_0 du_data run data get block ~ ~ ~ CookTimeTotal
scoreboard players remove $crafting.temp_0 du_data 10
execute if score @s du_data >= $crafting.temp_0 du_data run function du:custom_furnace/end
