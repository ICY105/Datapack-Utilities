#spread struct
scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_5 du_data = out_0 du_data

scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_6 du_data = out_0 du_data

#displace
execute positioned ~-8 ~ ~-8 run function du:world/generation/struct_gen/gen_displace_x

#clean up
data modify block -29999999 0 1600 RecordItem.tag.du merge value {temp_struct_list:[]}