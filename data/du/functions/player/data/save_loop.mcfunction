#get stored ID
execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDMost 0.0000000002328306437081
execute store result score temp_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDLeast 0.0000000002328306437081
scoreboard players operation temp_0 du_data += temp_1 du_data

#run save function
scoreboard players set out_0 du_data 0
execute as @a if score @s du_uuid = temp_0 du_data at @s run function du:player/data/save

#cycle data
execute if score out_0 du_data matches 0 run data modify block -29999999 0 1600 RecordItem.tag.du.player_data.offline prepend from block -29999999 0 1600 RecordItem.tag.du.player_data.online[0]
execute if score out_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online append from block -29999999 0 1600 RecordItem.tag.du.player_data.online[0]
data remove block -29999999 0 1600 RecordItem.tag.du.player_data.online[0]

#loop
scoreboard players remove in_0 du_data 1
execute if score in_0 du_data matches 1.. run function du:player/data/loop