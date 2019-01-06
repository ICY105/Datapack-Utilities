execute store success score temp_0 du_data run tag @s add du_drophead
loot spawn ~ ~ ~ kill @s
execute if score temp_0 du_data matches 1 run tag @s remove du_drophead