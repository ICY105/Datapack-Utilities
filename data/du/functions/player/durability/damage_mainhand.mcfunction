#revoke trigger
advancement revoke @s only du:triggers/durability/tool_durability
tag @s remove du_damage_tool

#save item
replaceitem block -29999999 0 1601 container.0 stone
data modify block -29999999 0 1601 Items[0] set from entity @s SelectedItem
execute positioned -29999999 0 1601 unless block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{init:1b}} }]} run function du:player/durability/init_item

#modify item
scoreboard players set out_0 du_data 1
execute positioned -29999999 0 1601 if block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_unbreakable
execute positioned -29999999 0 1601 unless block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_durability

#set lore
data merge block -29999999 0 1602 {Text1:"[\"\",{\"translate\":\"item.durability\",\"color\":\"gray\",\"italic\":false,\"with\":[{\"nbt\":\"Items[0].tag.du_dur.dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[0].tag.du_dur.max_dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false}]}]"}
data modify block -29999999 0 1601 Items[0].tag.display.Lore[0] set from block -29999999 0 1602 Text1

#load item
execute if score out_0 du_data matches 1 run loot replace entity @s weapon.mainhand 1 mine -29999999 0 1601 minecraft:golden_pickaxe{drop_contents:true}
execute if score out_0 du_data matches 0 run replaceitem entity @s weapon.mainhand air
