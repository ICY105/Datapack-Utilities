
execute if score temp_2 du_data matches 0 positioned ~16 ~ ~16 run function du:world/generation/generator
scoreboard players remove temp_2 du_data 1
execute if score temp_2 du_data matches 0.. positioned ~ ~ ~-1 run function du:world/generation/position_z
