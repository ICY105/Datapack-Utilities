
data modify block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether prepend value {id:-1,size:-1,weight:0,ignore_placement:0,isBlacklist:-1b}

#id
execute store result block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether[0].id int 1 run scoreboard players get reg_id du_data
scoreboard players operation out_0 du_data = reg_id du_data
scoreboard players add reg_id du_data 1

#size
execute store result block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether[0].size int 1 run scoreboard players get in_0 du_data

#weight
execute store result block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether[0].weight int 1 run scoreboard players get in_1 du_data

#ignore placement
execute store result block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether[0].ignore_placement int 1 run scoreboard players get in_2 du_data