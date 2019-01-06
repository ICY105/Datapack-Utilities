
data merge block -29999999 0 1601 {Items:[]}

# Row 1

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:9b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:9b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 0b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:10b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:10b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 1b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:11b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:11b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 2b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:12b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:12b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 3b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:13b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:13b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 4b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:14b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:14b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 5b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item


execute store success score temp_0 du_data if data entity @s Inventory[{Slot:15b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:15b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 6b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:16b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:16b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 7b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:17b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:17b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 8b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:18b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:18b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 9b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

#Row 2

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:19b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:19b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 10b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:20b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:20b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 11b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:21b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:21b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 12b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:22b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:22b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 13b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:23b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:23b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 14b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:24b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:24b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 15b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:25b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:25b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 16b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:26b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:26b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 17b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:27b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:27b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 18b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

#Row 3

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:28b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:28b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 19b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:29b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:29b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 20b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:30b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:30b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 21b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:31b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:31b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 22b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:32b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:32b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 23b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:33b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:33b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 24b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:34b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:34b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 25b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:35b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:35b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 26b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:36b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:36b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 27b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item
