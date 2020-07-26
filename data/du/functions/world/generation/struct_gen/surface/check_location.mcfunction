
scoreboard players set $world.out_0 du_data 0

scoreboard players set $world.temp_0 du_data 0
execute if block ~-4 ~-3 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~-2 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~-1 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~ ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~1 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~2 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~-4 ~3 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1 run scoreboard players add $world.out_0 du_data 1

scoreboard players set $world.temp_0 du_data 0
execute if block ~4 ~-3 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~-2 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~-1 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~ ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~1 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~2 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~4 ~3 ~ #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1 run scoreboard players add $world.out_0 du_data 1

scoreboard players set $world.temp_0 du_data 0
execute if block ~ ~-3 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~-2 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~-1 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~ ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~1 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~2 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~3 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1 run scoreboard players add $world.out_0 du_data 1

scoreboard players set $world.temp_0 du_data 0
execute if block ~ ~-3 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~-2 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~-1 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~ ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~1 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~2 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if block ~ ~3 ~-4 #du:internal/valid_gen_struct run scoreboard players set $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1 run scoreboard players add $world.out_0 du_data 1

execute if score $world.out_0 du_data matches ..3 run scoreboard players set $world.out_0 du_data 0
execute if score $world.out_0 du_data matches 4 run scoreboard players set $world.out_0 du_data 1
