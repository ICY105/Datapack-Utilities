
replaceitem block ~ ~ ~ container.16 air
tag @s remove du_has_recipe

function du:custom_crafter/inv/get_crafting_count

scoreboard players set out_0 du_data 1
scoreboard players set out_1 du_data 1
scoreboard players set out_2 du_data 1
scoreboard players set out_3 du_data 1
scoreboard players set out_4 du_data 1
scoreboard players set out_5 du_data 1
scoreboard players set out_6 du_data 1
scoreboard players set out_7 du_data 1
scoreboard players set out_8 du_data 1

function #du:recipes
function du:custom_crafter/inv/get_16

execute if score out du_data matches 1.. run function du:custom_crafter/check_output

execute if score out du_data matches 1.. run tag @s add du_has_recipe

