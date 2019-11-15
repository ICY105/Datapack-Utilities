
#clear existing registry
data modify block -29999999 0 1600 RecordItem.tag.du merge value {ore_reg_overworld:[],ore_reg_end:[],ore_reg_nether:[],struct_reg_overworld:[],struct_reg_end:[],struct_reg_nether:[],temp_struct_list:[]}

#reset scores
scoreboard players set $du.reg_id du_data 1
scoreboard players set worldgen du_data 0
execute store result score $du.seed du_data run seed
