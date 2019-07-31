scoreboard players set out_0 du_data 0

execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.player_data.offline
execute if score in_0 du_data matches 1.. run function du:player/data/load_loop

execute if score out_0 du_data matches 0 run function du:player/data/new
execute if score out_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online prepend from block -29999999 0 1600 RecordItem.tag.du.player_data.offline[0]
execute if score out_0 du_data matches 1 run data remove block -29999999 0 1600 RecordItem.tag.du.player_data.offline[0]
function #du:player/save_data
