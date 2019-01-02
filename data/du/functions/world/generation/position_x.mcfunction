execute if score temp_1 du_data matches 0 run function du:world/generation/position_z
scoreboard players remove temp_1 du_data 1
execute if score temp_1 du_data matches 0.. positioned ~-1 ~ ~ run function du:world/generation/position_x
