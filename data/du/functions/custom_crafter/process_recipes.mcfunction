
scoreboard players operation $crafting.temp_4 du_data = $crafting.out du_data

function du:custom_crafter/check_recipes
tag @s remove du_has_recipe
scoreboard players operation $crafting.in du_data = $crafting.temp_4 du_data
execute store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get $crafting.in du_data

#get input amounts
execute store result score $crafting.in_0 du_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score $crafting.in_1 du_data run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score $crafting.in_2 du_data run data get block ~ ~ ~ Items[{Slot:4b}].Count

execute store result score $crafting.in_3 du_data run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result score $crafting.in_4 du_data run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result score $crafting.in_5 du_data run data get block ~ ~ ~ Items[{Slot:13b}].Count

execute store result score $crafting.in_6 du_data run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result score $crafting.in_7 du_data run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute store result score $crafting.in_8 du_data run data get block ~ ~ ~ Items[{Slot:22b}].Count

scoreboard players operation $crafting.out_0 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_1 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_2 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_3 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_4 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_5 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_6 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_7 du_data *= $crafting.temp_3 du_data
scoreboard players operation $crafting.out_8 du_data *= $crafting.temp_3 du_data

scoreboard players set $crafting.temp_2 du_data 0
execute if score $crafting.in_0 du_data matches 1.. run scoreboard players add $crafting.temp_2 du_data 1
execute if score $crafting.in_1 du_data matches 1.. run scoreboard players add $crafting.temp_2 du_data 1
execute if score $crafting.in_2 du_data matches 1.. run scoreboard players add $crafting.temp_2 du_data 1

scoreboard players set $crafting.temp_3 du_data 0
execute if score $crafting.in_0 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.in_1 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.in_2 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.in_3 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.in_4 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.in_5 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1
execute if score $crafting.temp_4 du_data matches 1.. run scoreboard players add $crafting.temp_3 du_data 1

scoreboard players operation $crafting.in_0 du_data -= $crafting.out_0 du_data
scoreboard players operation $crafting.in_1 du_data -= $crafting.out_1 du_data
scoreboard players operation $crafting.in_2 du_data -= $crafting.out_2 du_data
scoreboard players operation $crafting.in_3 du_data -= $crafting.out_3 du_data
scoreboard players operation $crafting.in_4 du_data -= $crafting.out_4 du_data
scoreboard players operation $crafting.in_5 du_data -= $crafting.out_5 du_data
scoreboard players operation $crafting.in_6 du_data -= $crafting.out_6 du_data
scoreboard players operation $crafting.in_7 du_data -= $crafting.out_7 du_data
scoreboard players operation $crafting.in_8 du_data -= $crafting.out_8 du_data

execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $crafting.in_0 du_data
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get $crafting.in_1 du_data
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get $crafting.in_2 du_data

execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get $crafting.in_3 du_data
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get $crafting.in_4 du_data
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get $crafting.in_5 du_data

execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get $crafting.in_6 du_data
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get $crafting.in_7 du_data
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get $crafting.in_8 du_data
