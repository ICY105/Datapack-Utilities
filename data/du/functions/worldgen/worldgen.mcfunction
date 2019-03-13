
scoreboard players set temp_0 du_data 48

execute store result score temp_1 du_data run data get entity @s Pos[0]
scoreboard players operation temp_1 du_data %= temp_0 du_data

execute store result score temp_2 du_data run data get entity @s Pos[2]
scoreboard players operation temp_2 du_data %= temp_0 du_data

execute if score temp_1 du_data matches ..-1 run scoreboard players add temp_1 du_data 48
execute if score temp_2 du_data matches ..-1 run scoreboard players add temp_2 du_data 48

execute align xz positioned ~ 0.5 ~ run function du:world/generation/position_x
