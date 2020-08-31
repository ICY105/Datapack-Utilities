
execute store result score temp_0 du_data run data get entity @s UUID[0]
execute store result score temp_1 du_data run data get entity @s UUID[1]
execute store result score temp_2 du_data run data get entity @s UUID[2]
execute store result score temp_3 du_data run data get entity @s UUID[3]

scoreboard players operation @s du_uuid = temp_0 du_data
scoreboard players operation @s du_uuid += temp_1 du_data
scoreboard players operation @s du_uuid += temp_2 du_data
scoreboard players operation @s du_uuid += temp_3 du_data
