
#check for valid empty slot
scoreboard players set $crafting.temp_0 du_data 0
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set $crafting.temp_0 du_data 2
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set $crafting.temp_0 du_data 3
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set $crafting.temp_0 du_data 4

execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players set $crafting.temp_0 du_data 11
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players set $crafting.temp_0 du_data 12
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set $crafting.temp_0 du_data 13

execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set $crafting.temp_0 du_data 20
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set $crafting.temp_0 du_data 21
execute if score $crafting.temp_0 du_data matches 0 unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set $crafting.temp_0 du_data 22

#copy to valid slot
data modify block -29999999 0 1601 Items[0].Slot set value 0b
execute if score $crafting.temp_0 du_data matches 2 run item replace block ~ ~ ~ container.2 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 3 run item replace block ~ ~ ~ container.3 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 4 run item replace block ~ ~ ~ container.4 from block -29999999 0 1601 container.0

execute if score $crafting.temp_0 du_data matches 11 run item replace block ~ ~ ~ container.11 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 12 run item replace block ~ ~ ~ container.12 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 13 run item replace block ~ ~ ~ container.13 from block -29999999 0 1601 container.0

execute if score $crafting.temp_0 du_data matches 20 run item replace block ~ ~ ~ container.20 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 21 run item replace block ~ ~ ~ container.21 from block -29999999 0 1601 container.0
execute if score $crafting.temp_0 du_data matches 22 run item replace block ~ ~ ~ container.22 from block -29999999 0 1601 container.0

#loop if more items
execute if score $crafting.temp_0 du_data matches 1.. run data remove block -29999999 0 1601 Items[0]
execute if score $crafting.temp_0 du_data matches 1.. if data block -29999999 0 1601 Items[0] run function du:custom_crafter/main_ui_2
