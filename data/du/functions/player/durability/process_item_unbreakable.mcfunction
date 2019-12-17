
scoreboard players set out_0 du_data 1

#durability
execute store result score temp_0 du_data run data get storage du:temp object.tag.du_dur.dur
scoreboard players remove temp_0 du_data 1
execute store result storage du:temp object.tag.du_dur.dur int 1 run scoreboard players get temp_0 du_data

#break effect
execute if score temp_0 du_data matches ..-1 run scoreboard players set out_0 du_data 0
