#revoke trigger
advancement revoke @s only du:triggers/durability/tool_durability
tag @s remove du_damage_tool

#save item
data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:102b}]
execute store success block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot byte 0 if entity @s
replaceitem block -29999999 0 1601 container.0 stone
data modify block -29999999 0 1601 Items[0] set from block -29999999 0 1600 RecordItem.tag.du.temp_item
execute positioned -29999999 0 1601 unless block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{init:1b}} }]} run function du:player/durability/init_item

#modify item
scoreboard players set out_0 du_data 1
execute positioned -29999999 0 1601 if block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_unbreakable
execute positioned -29999999 0 1601 unless block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_durability

#set lore
data merge block -29999999 0 1602 {Text1:"[\"\",{\"text\":\"Durability: \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[0].tag.du_dur.dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false},{\"text\":\"/\",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[0].tag.du_dur.max_dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false}]"}
data modify block -29999999 0 1601 Items[0].tag.display.Lore[-1] set from block -29999999 0 1602 Text1

#load item
execute if score out_0 du_data matches 1 run loot replace entity @s armor.chest 1 mine -29999999 0 1601 minecraft:golden_pickaxe{drop_contents:true}
execute if score out_0 du_data matches 0 run replaceitem entity @s armor.chest air
