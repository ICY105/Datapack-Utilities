
#>in_1: loop value
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##in_6: locoal biome

#get starting ore ID
execute if score in_4 du_data matches -1 store result score in_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0]
execute if score in_4 du_data matches 0 store result score in_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_overworld[0]
execute if score in_4 du_data matches 1 store result score in_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0]

#run proper function
execute if score in_4 du_data matches -1 if score in_1 du_data matches 1.. run function du:world/generation/ore_gen/generate_ores_nether
execute if score in_4 du_data matches 0 if score in_1 du_data matches 1.. run function du:world/generation/ore_gen/generate_ores_overworld
execute if score in_4 du_data matches 1 if score in_1 du_data matches 1.. run function du:world/generation/ore_gen/generate_ores_end
