#get size
scoreboard players set in_3 du_data 0

scoreboard players set in_0 du_data 12
function du:math/random
execute if score out_0 du_data matches 0 run scoreboard players set in_3 du_data 1

scoreboard players set in_0 du_data 48
function du:math/random
execute if score out_0 du_data matches 0 run scoreboard players set in_3 du_data 2

#determine placement conditions
scoreboard players set in_4 du_data 3
execute if block ~ ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_4 du_data 1
execute if block ~2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_4 du_data 1
execute if block ~-2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove in_4 du_data 1
execute if block ~ ~ ~2 #du:internal/valid_gen_struct run scoreboard players remove in_4 du_data 1
execute if block ~ ~ ~-2 #du:internal/valid_gen_struct run scoreboard players remove in_4 du_data 1

execute if score in_4 du_data matches 1.. run scoreboard players set in_4 du_data 1
execute if score in_4 du_data matches ..0 run scoreboard players set in_4 du_data 0

#get struct
scoreboard players set in_0 du_data 0
scoreboard players set out_0 du_data 2000

execute if score in_2 du_data matches -1 run function du:world/generation/struct_gen/get_nether
execute if score in_2 du_data matches 0 run function du:world/generation/struct_gen/get_overworld
execute if score in_2 du_data matches 1 run function du:world/generation/struct_gen/get_end

execute if score in_0 du_data matches ..1000 run scoreboard players set in_0 du_data 1000
function du:math/random
function du:world/generation/struct_gen/get_weighted_struct

#get struct id
execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].id

#gen struct
execute if score in_0 du_data matches 1.. if score in_2 du_data matches -1 run function #du:world/struct_gen_nether
execute if score in_0 du_data matches 1.. if score in_2 du_data matches 0 run function #du:world/struct_gen_overworld
execute if score in_0 du_data matches 1.. if score in_2 du_data matches 1 run function #du:world/struct_gen_end

#end find surface loop
scoreboard players set temp_0 du_data -1