#run search
execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.player_data.online
execute if score in_0 du_data matches 1.. run function du:player/data/get_data_loop

#copy to temp if found data
execute if score temp_0 du_data = @s du_uuid run data modify block -29999999 0 1600 RecordItem.tag.du.player_data.temp set from block -29999999 0 1600 RecordItem.tag.du.player_data.online[0]