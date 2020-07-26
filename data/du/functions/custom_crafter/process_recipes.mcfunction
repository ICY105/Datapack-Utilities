
scoreboard players operation $crafting.temp_4 du_data = $crafting.out du_data

function du:custom_crafter/check_recipes
tag @s remove du_has_recipe
scoreboard players operation $crafting.in du_data = $crafting.temp_4 du_data
function du:custom_crafter/inv/set_16

function du:custom_crafter/inv/get_crafting_count

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

function du:custom_crafter/inv/set_crafting_count
