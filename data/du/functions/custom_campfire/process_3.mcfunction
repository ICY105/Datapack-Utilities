
#get data
execute store result score $crafting.temp_0 du_data run data get block ~ ~ ~ CookingTimes[3]
execute store result score $crafting.temp_1 du_data run data get block ~ ~ ~ CookingTotalTimes[3]
execute store result score $crafting.in_0 du_data run data get block ~ ~ ~ Items[{Slot:3b}].tag.du_smelt_id

#check status
scoreboard players remove $crafting.temp_0 du_data 21
execute if score $crafting.temp_0 du_data >= $crafting.temp_1 du_data run function #du:recipes/campfire
execute if score $crafting.temp_0 du_data >= $crafting.temp_1 du_data run data remove block ~ ~ ~ Items[{Slot:3b}]
