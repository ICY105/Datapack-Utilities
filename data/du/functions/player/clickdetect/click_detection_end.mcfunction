scoreboard players operation temp_0 du_data = @s du_uuid

execute as @e[tag=du_click_entity] if score @s du_data = temp_0 du_data run tp @s ~ -100 ~

tag @s remove du_click_active
tag @s remove du_right_click
tag @s remove du_left_click