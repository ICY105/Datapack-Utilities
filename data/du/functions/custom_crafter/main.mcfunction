#UI
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
replaceitem block -29999999 0 1601 container.2 air
replaceitem block -29999999 0 1601 container.3 air
replaceitem block -29999999 0 1601 container.4 air
replaceitem block -29999999 0 1601 container.11 air
replaceitem block -29999999 0 1601 container.12 air
replaceitem block -29999999 0 1601 container.13 air
replaceitem block -29999999 0 1601 container.16 air
replaceitem block -29999999 0 1601 container.20 air
replaceitem block -29999999 0 1601 container.21 air
replaceitem block -29999999 0 1601 container.22 air
loot spawn ~ ~1 ~ mine -29999999 0 1601 minecraft:diamond_pickaxe{drop_contents:true}

execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:0b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:1b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.1 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:5b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:6b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.6 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:7b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.7 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:8b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:9b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.9 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:10b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.10 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:14b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.14 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:15b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.15 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:17b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.17 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:18b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:19b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.19 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:23b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:24b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.24 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:25b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.25 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:26b,tag:{du_gui:1b}}]} run replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1

#check recipes
execute if entity @s[tag=du_has_recipe] run function du:custom_crafter/inv/get_16
execute if entity @s[tag=du_has_recipe] if score out du_data < @s du_data run function du:custom_crafter/process_recipes
execute if entity @s[tag=!du_has_recipe] if score timer_20 du_data matches 0 store result score temp_0 du_data run data get block ~ ~ ~ Items[17].Count
execute if entity @s[tag=!du_has_recipe] if score timer_20 du_data matches 0 if score temp_0 du_data matches 1.. unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:16b}]} run function du:custom_crafter/check_recipes
execute if entity @s[tag=!du_has_recipe] if score timer_20 du_data matches 0 store result score temp_0 du_data run data get block ~ ~ ~ Items[16].Count
execute if entity @s[tag=!du_has_recipe] if score timer_20 du_data matches 0 if score temp_0 du_data matches 0 unless block ~ ~ ~ #du:internal/chest-like{Items:[{Slot:16b}]} run function du:custom_crafter/check_recipes
execute if entity @s[tag=du_has_recipe] run function du:custom_crafter/check_recipes

execute if block ~ ~-1 ~ hopper run data merge block ~ ~ ~ {TransferCooldown:2147483647}
