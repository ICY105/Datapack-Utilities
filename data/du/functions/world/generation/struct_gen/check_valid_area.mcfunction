
#>in_2: 1 for not valid, 0 for valid

scoreboard players set in_2 du_data 3
execute if block ~ ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_2 du_data 1
execute if block ~2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_2 du_data 1
execute if block ~-2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_2 du_data 1
execute if block ~ ~ ~2 #du:internal/valid_gen_struct run scoreboard players remove in_2 du_data 1
execute if block ~ ~ ~-2 #du:internal/valid_gen_struct run scoreboard players remove in_2 du_data 1

execute if score in_2 du_data matches 1.. run scoreboard players set in_2 du_data 1
execute if score in_2 du_data matches ..0 run scoreboard players set in_2 du_data 0