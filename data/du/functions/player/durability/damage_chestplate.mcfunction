
#load item
execute if score temp_9 du_data matches 0 run function du:player/inv/get_equipment
scoreboard players set temp_9 du_data 1

#modify item
data modify storage du:temp object set from block -29999999 0 1601 Items[4]
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:4b,tag:{du_dur:{init:1b}} }]} run function du:player/durability/init_item
execute positioned -29999999 0 1601 if block ~ ~ ~ green_shulker_box{Items:[{Slot:4b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_unbreakable
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:4b,tag:{du_dur:{item_dur:0}} }]} run function du:player/durability/process_item_durability
data modify block -29999999 0 1601 Items[4] set from storage du:temp object

#set lore
data merge block -29999999 0 1602 {Text1:'[{"translate":"item.durability","color":"gray","italic":false,"with":[{"nbt":"Items[4].tag.du_dur.dur","block":"-29999999 0 1601","color":"gray","italic":false},{"nbt":"Items[4].tag.du_dur.max_dur","block":"-29999999 0 1601","color":"gray","italic":false}]}]'}
data modify block -29999999 0 1601 Items[4].tag.display.Lore[-1] set from block -29999999 0 1602 Text1

#destroy item if broken
execute if score out_0 du_data matches 0 run replaceitem block -29999999 0 1601 container.4 minecraft:leather_chestplate{du_gui:1b}
execute if score out_0 du_data matches 0 run playsound minecraft:entity.item.break player @a[distance=..16]
