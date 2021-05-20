
#ui
execute if data block ~ ~ ~ Items[0] run function du:custom_crafter/main_ui

#check recipes
execute if entity @s[tag=du_has_recipe] store result score $crafting.out du_data run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute if entity @s[tag=du_has_recipe] store success score $crafting.temp_0 du_data run data modify block ~ ~ ~ Items[{Slot:16b}].id set from block ~ ~ ~ Items[{Slot:26b}].tag.item_cache
execute if entity @s[tag=du_has_recipe] if score $crafting.temp_0 du_data matches 1 run scoreboard players set $crafting.out du_data 0
execute if entity @s[tag=du_has_recipe] if score $crafting.out du_data < @s du_data run function du:custom_crafter/process_recipes
execute if entity @s[tag=du_has_recipe] run function du:custom_crafter/check_recipes

execute if entity @s[tag=!du_has_recipe] if score $base.timer_20 du_data matches 0 if data block ~ ~ ~ Items[17] unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:16b}]} run function du:custom_crafter/check_recipes
