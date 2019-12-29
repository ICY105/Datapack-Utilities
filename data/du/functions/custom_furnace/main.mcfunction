execute unless block ~ ~ ~ #du:internal/furnace-like run kill @s
execute unless block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:2b}]} run scoreboard players set @s du_move_y 0

execute store result score $crafting.temp_0 du_data run data get block ~ ~ ~ Items[{Slot:0b}].tag.du_smelt_id
execute unless score $crafting.temp_0 du_data matches 0 if entity @s[tag=!du_fur_active] run function du:custom_furnace/start_smelt
