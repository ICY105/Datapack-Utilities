
item block ~ ~ ~ container.16 replace air
tag @s remove du_has_recipe

execute store result score $crafting.in_0 du_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score $crafting.in_1 du_data run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score $crafting.in_2 du_data run data get block ~ ~ ~ Items[{Slot:4b}].Count

execute store result score $crafting.in_3 du_data run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result score $crafting.in_4 du_data run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result score $crafting.in_5 du_data run data get block ~ ~ ~ Items[{Slot:13b}].Count

execute store result score $crafting.in_6 du_data run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result score $crafting.in_7 du_data run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute store result score $crafting.in_8 du_data run data get block ~ ~ ~ Items[{Slot:22b}].Count

scoreboard players set $crafting.out_0 du_data 1
scoreboard players set $crafting.out_1 du_data 1
scoreboard players set $crafting.out_2 du_data 1
scoreboard players set $crafting.out_3 du_data 1
scoreboard players set $crafting.out_4 du_data 1
scoreboard players set $crafting.out_5 du_data 1
scoreboard players set $crafting.out_6 du_data 1
scoreboard players set $crafting.out_7 du_data 1
scoreboard players set $crafting.out_8 du_data 1

function #du:recipes/crafting

execute store result score $crafting.out du_data run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute if score $crafting.out du_data matches 1.. run function du:custom_crafter/check_output
execute if score $crafting.out du_data matches 1.. run tag @s add du_has_recipe
execute if score $crafting.out du_data matches 1.. run data modify block ~ ~ ~ Items[{Slot:26b}].tag.item_cache set from block ~ ~ ~ Items[{Slot:16b}].id
