execute store result score temp_0 du_data run data get block -29999999 0 1601 Items[0].tag.du_dur.dur
scoreboard players remove temp_0 du_data 1
execute store result block -29999999 0 1601 Items[0].tag.du_dur.dur int 1 run scoreboard players get temp_0 du_data

#break effect
execute if score temp_0 du_data matches ..-1 run scoreboard players set out_0 du_data 0
execute if score temp_0 du_data matches ..-1 run replaceitem entity @s weapon.mainhand air
execute if score temp_0 du_data matches ..-1 at @s run playsound minecraft:entity.item.break player @p