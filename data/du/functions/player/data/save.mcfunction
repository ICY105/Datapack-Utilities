scoreboard players set out_0 du_data 1
tag @s add du_data_processed

#load data if needed
execute if score @s du_leave_game matches 1.. run function #du:play/load_data
scoreboard players set @s du_leave_game 0

#save data
function #du:player/save_data