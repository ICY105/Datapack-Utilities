
#in_0: slot
#out_0: item count

scoreboard players set temp_0 du_data 0
scoreboard players set out_0 du_data 0

execute store result score temp_0 du_data run data get entity @s Inventory[20].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 100
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/count_entity/0-20
execute if score temp_0 du_data < in_0 du_data run function du:inventory/count_entity/21-42



