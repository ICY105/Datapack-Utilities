
execute if score $crafting.in_0 du_data matches 1.. unless score $crafting.out_0 du_data matches 0 run scoreboard players operation $crafting.in_0 du_data /= $crafting.out_0 du_data
execute if score $crafting.in_1 du_data matches 1.. unless score $crafting.out_1 du_data matches 0 run scoreboard players operation $crafting.in_1 du_data /= $crafting.out_1 du_data
execute if score $crafting.in_2 du_data matches 1.. unless score $crafting.out_2 du_data matches 0 run scoreboard players operation $crafting.in_2 du_data /= $crafting.out_2 du_data
execute if score $crafting.in_3 du_data matches 1.. unless score $crafting.out_3 du_data matches 0 run scoreboard players operation $crafting.in_3 du_data /= $crafting.out_3 du_data
execute if score $crafting.in_4 du_data matches 1.. unless score $crafting.out_4 du_data matches 0 run scoreboard players operation $crafting.in_4 du_data /= $crafting.out_4 du_data
execute if score $crafting.in_5 du_data matches 1.. unless score $crafting.out_5 du_data matches 0 run scoreboard players operation $crafting.in_5 du_data /= $crafting.out_5 du_data
execute if score $crafting.in_6 du_data matches 1.. unless score $crafting.out_6 du_data matches 0 run scoreboard players operation $crafting.in_6 du_data /= $crafting.out_6 du_data
execute if score $crafting.in_7 du_data matches 1.. unless score $crafting.out_7 du_data matches 0 run scoreboard players operation $crafting.in_7 du_data /= $crafting.out_7 du_data
execute if score $crafting.in_8 du_data matches 1.. unless score $crafting.out_8 du_data matches 0 run scoreboard players operation $crafting.in_8 du_data /= $crafting.out_8 du_data

execute if score $crafting.out_0 du_data matches 0 run scoreboard players set $crafting.in_0 du_data 64
execute if score $crafting.out_1 du_data matches 0 run scoreboard players set $crafting.in_1 du_data 64
execute if score $crafting.out_2 du_data matches 0 run scoreboard players set $crafting.in_2 du_data 64
execute if score $crafting.out_3 du_data matches 0 run scoreboard players set $crafting.in_3 du_data 64
execute if score $crafting.out_4 du_data matches 0 run scoreboard players set $crafting.in_4 du_data 64
execute if score $crafting.out_5 du_data matches 0 run scoreboard players set $crafting.in_5 du_data 64
execute if score $crafting.out_6 du_data matches 0 run scoreboard players set $crafting.in_6 du_data 64
execute if score $crafting.out_7 du_data matches 0 run scoreboard players set $crafting.in_7 du_data 64
execute if score $crafting.out_8 du_data matches 0 run scoreboard players set $crafting.in_8 du_data 64

scoreboard players set $crafting.temp_0 du_data 65
execute if score $crafting.in_0 du_data matches 1.. if score $crafting.in_0 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_0 du_data
execute if score $crafting.in_1 du_data matches 1.. if score $crafting.in_1 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_1 du_data
execute if score $crafting.in_2 du_data matches 1.. if score $crafting.in_2 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_2 du_data
execute if score $crafting.in_3 du_data matches 1.. if score $crafting.in_3 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_3 du_data
execute if score $crafting.in_4 du_data matches 1.. if score $crafting.in_4 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_4 du_data
execute if score $crafting.in_5 du_data matches 1.. if score $crafting.in_5 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_5 du_data
execute if score $crafting.in_6 du_data matches 1.. if score $crafting.in_6 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_6 du_data
execute if score $crafting.in_7 du_data matches 1.. if score $crafting.in_7 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_7 du_data
execute if score $crafting.in_8 du_data matches 1.. if score $crafting.in_8 du_data < $crafting.temp_0 du_data run scoreboard players operation $crafting.temp_0 du_data = $crafting.in_8 du_data
execute if score $crafting.temp_0 du_data matches 65.. run scoreboard players set $crafting.temp_0 du_data 0


execute if score $crafting.out du_data matches 1 run function du:custom_crafter/check_stacksize

scoreboard players operation $crafting.temp_0 du_data *= $crafting.out du_data
execute if score $crafting.temp_0 du_data matches 65.. run function du:custom_crafter/inv/compact

scoreboard players operation $crafting.temp_3 du_data = $crafting.temp_0 du_data
scoreboard players operation $crafting.temp_3 du_data /= $crafting.out du_data

scoreboard players operation @s du_data = $crafting.temp_0 du_data
execute store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get $crafting.temp_0 du_data
