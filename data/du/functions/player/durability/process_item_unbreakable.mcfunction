
#unbreaking
scoreboard players set temp_5 du_data 0
scoreboard players set temp_4 du_data 0
execute if block -29999999 0 1601 green_shulker_box{Items:[{Slot:0b,tag:{Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}}]} run scoreboard players set temp_5 du_data 1
execute if block -29999999 0 1601 green_shulker_box{Items:[{Slot:0b,tag:{Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}]}}]} run scoreboard players set temp_5 du_data 2
execute if block -29999999 0 1601 green_shulker_box{Items:[{Slot:0b,tag:{Enchantments: [{lvl: 3s, id: "minecraft:unbreaking"}]}}]} run scoreboard players set temp_5 du_data 3

execute if score temp_5 du_data matches 1..3 run scoreboard players set in_0 du_data 100
execute if score temp_5 du_data matches 1..3 run function du:math/random
execute if score temp_5 du_data matches 1 if score out_0 du_data matches ..19 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 2 if score out_0 du_data matches ..35 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 3 if score out_0 du_data matches ..42 run scoreboard players set temp_4 du_data 1

#durability
execute store result score temp_0 du_data run data get block -29999999 0 1601 Items[0].tag.du_dur.dur
execute if score temp_4 du_data matches 0 run scoreboard players remove temp_0 du_data 1
execute store result block -29999999 0 1601 Items[0].tag.du_dur.dur int 1 run scoreboard players get temp_0 du_data

#break effect
scoreboard players set out_0 du_data 1
execute if score temp_0 du_data matches ..-1 run scoreboard players set out_0 du_data 0
execute if score temp_0 du_data matches ..-1 run replaceitem entity @s weapon.mainhand air
execute if score temp_0 du_data matches ..-1 at @s run playsound minecraft:entity.item.break player @p