
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##in_6: local biome
#>temp_0: random x pos
#>temp_1: random z pos

#spread struct
scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_0 du_data = out_0 du_data

scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_1 du_data = out_0 du_data

#set up list
data modify block -29999999 0 1600 RecordItem.tag.du merge value {temp_struct_list:[]}

#displace
execute positioned ~7 ~ ~7 run function du:world/generation/struct_gen/gen_displace_x
