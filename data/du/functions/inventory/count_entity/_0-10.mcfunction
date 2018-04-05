
execute store result score temp_0 du_data run data get entity @s Inventory[5].Slot
execute if score temp_0 du_data <= in_0 du_data run function du:inventory/count_entity/__0-5
execute if score temp_0 du_data > in_0 du_data run function du:inventory/count_entity/__6-10
