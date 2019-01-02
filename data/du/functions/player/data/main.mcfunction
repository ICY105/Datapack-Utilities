execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.player_data.online
execute if score in_0 du_data matches 1.. run function du:player/data/save_loop

execute as @a[tag=!du_data_processed] at @s run function du:player/data/load
tag @a remove du_data_processed