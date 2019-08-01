execute store success score temp_0 du_data run tag @s add du_drophead
loot replace block -29999999 0 1601 container.0 kill @s
execute if score temp_0 du_data matches 1 run tag @s remove du_drophead