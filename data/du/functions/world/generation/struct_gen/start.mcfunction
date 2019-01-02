
#get pos
scoreboard players set in_3 du_data 0

scoreboard players set in_0 du_data 12
function du:math/random
execute if score out_0 du_data matches 0 run scoreboard players set in_3 du_data 1

scoreboard players set in_0 du_data 48
function du:math/random
execute if score out_0 du_data matches 0 run scoreboard players set in_3 du_data 2

#get struct
scoreboard players set in_0 du_data 0
scoreboard players set out_0 du_data 2000

execute if score in_2 du_data matches -1 run function du:world/generation/struct_gen/get_nether
execute if score in_2 du_data matches 0 run function du:world/generation/struct_gen/get_overworld
execute if score in_2 du_data matches 1 run function du:world/generation/struct_gen/get_end

execute if score in_0 du_data matches ..1000 run scoreboard players set in_0 du_data 1000
function du:math/random
function du:world/generation/struct_gen/get_weighted_struct

#generate struct
execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].id
execute if score in_0 du_data matches 1.. run function du:world/generation/struct_gen/gen_struct

#clean up
data modify block -29999999 0 1600 RecordItem.tag.du merge value {temp_struct_list:[]}