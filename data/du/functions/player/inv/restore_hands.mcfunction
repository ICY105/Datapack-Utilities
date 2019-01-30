execute store success score temp_0 du_data if data entity @s Inventory[{Slot:100b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:100b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 2b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:101b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:101b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 3b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:102b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:102b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 4b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:103b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:103b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 5b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

loot replace entity @s weapon.mainhand mine -29999999 0 1601 minecraft:golden_pickaxe{drop_contents:true}