execute if entity @s[tag=du_has_recipe] run function du:custom_crafter/inv/get_16
execute if entity @s[tag=du_has_recipe] if score out du_data < @s du_data run function du:custom_crafter/process_recipes
execute if entity @s[tag=!du_has_recipe] if score timer_20 du_data matches 0 unless block ~ ~ ~ trapped_chest{Items:[{Slot:16b}]} run function du:custom_crafter/check_recipes
execute if entity @s[tag=du_has_recipe] run function du:custom_crafter/check_recipes
