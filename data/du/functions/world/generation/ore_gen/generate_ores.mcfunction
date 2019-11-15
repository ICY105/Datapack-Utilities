
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed

#copy reg to temp
execute if score $du.dim du_data matches -1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp set from block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether
execute if score $du.dim du_data matches 0 run data modify block -29999999 0 1600 RecordItem.tag.du.temp set from block -29999999 0 1600 RecordItem.tag.du.ore_reg_overworld
execute if score $du.dim du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp set from block -29999999 0 1600 RecordItem.tag.du.ore_reg_end

#run loop
execute if score $du.dim du_data matches -1 if data block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0] run function du:world/generation/ore_gen/generate_ores_2
execute if score $du.dim du_data matches 0 if data block -29999999 0 1600 RecordItem.tag.du.ore_reg_overworld[0] run function du:world/generation/ore_gen/generate_ores_2
execute if score $du.dim du_data matches 1 if data block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0] run function du:world/generation/ore_gen/generate_ores_2
