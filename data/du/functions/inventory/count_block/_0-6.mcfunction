
execute store result score temp_0 du_data run data get entity @s Items[3].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 100
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/count_block/__0-3
execute if score temp_0 du_data < in_0 du_data run function du:inventory/count_block/__4-6
