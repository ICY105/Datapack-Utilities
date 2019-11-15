
data modify block -29999999 0 1600 RecordItem.tag.du.ore_reg_end prepend value {id:-1,y_min:-1,y_max:-1,veins_min:-1,veins_max:-1,vein_size_min:-1,vein_size_max:-1,isBlacklist:-1b}

#id
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].id int 1 run scoreboard players get $du.reg_id du_data
scoreboard players operation out_0 du_data = $du.reg_id du_data
scoreboard players add $du.reg_id du_data 1

#y values
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].y_min int 1 run scoreboard players get in_0 du_data
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].y_max int 1 run scoreboard players get in_1 du_data

#veins
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].veins_min int 1 run scoreboard players get in_2 du_data
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].veins_max int 1 run scoreboard players get in_3 du_data

#vein size
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].vein_size_min int 1 run scoreboard players get in_4 du_data
execute store result block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].vein_size_max int 1 run scoreboard players get in_5 du_data