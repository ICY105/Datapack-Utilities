
### Process Durability

scoreboard players set out_0 du_data 1

#load data
execute store result score temp_0 du_data run data get storage du:temp object.tag.du_dur.dur
execute store result score temp_1 du_data run data get storage du:temp object.tag.du_dur.damage
execute store result score temp_2 du_data run data get storage du:temp object.tag.Damage
execute store result score temp_3 du_data run data get storage du:temp object.tag.du_dur.item_dur
execute store result score temp_4 du_data run data get storage du:temp object.tag.du_dur.max_dur

#change internal dur value
scoreboard players operation temp_1 du_data -= temp_2 du_data
scoreboard players operation temp_0 du_data += temp_1 du_data
scoreboard players operation temp_1 du_data += temp_2 du_data
execute if score temp_0 du_data > temp_4 du_data run scoreboard players operation temp_0 du_data = temp_4 du_data
execute store result storage du:temp object.tag.du_dur.dur int 1 run scoreboard players get temp_0 du_data

#set dur bar
scoreboard players operation temp_5 du_data = temp_3 du_data
scoreboard players operation temp_6 du_data = temp_3 du_data
scoreboard players remove temp_6 du_data 8
scoreboard players operation temp_5 du_data *= temp_0 du_data
scoreboard players operation temp_5 du_data /= temp_4 du_data
scoreboard players operation temp_3 du_data -= temp_5 du_data
execute if score temp_3 du_data > temp_6 du_data run scoreboard players operation temp_3 du_data = temp_6 du_data
execute store result storage du:temp object.tag.Damage int 1 run scoreboard players get temp_3 du_data

execute store result storage du:temp object.tag.du_dur.damage int 1 run data get storage du:temp object.tag.Damage

#set broken
execute if score temp_0 du_data matches ..-1 run scoreboard players set out_0 du_data 0
