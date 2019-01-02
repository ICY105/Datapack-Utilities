
#get starting ore ID
execute if score in_2 du_data matches -1 store result score in_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].id
execute if score in_2 du_data matches 0 store result score in_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_overworld[0].id
execute if score in_2 du_data matches 1 store result score in_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].id

#run proper function
execute if score in_2 du_data matches -1 run function du:world/generation/ore_gen/generate_ores_nether
execute if score in_2 du_data matches 0 run function du:world/generation/ore_gen/generate_ores_overworld
execute if score in_2 du_data matches 1 run function du:world/generation/ore_gen/generate_ores_end
