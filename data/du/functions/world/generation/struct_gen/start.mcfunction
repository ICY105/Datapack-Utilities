
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed
#>temp_0: random x pos
#>temp_1: random z pos

#spread struct
scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_0 du_data = out_0 du_data

scoreboard players set in_0 du_data 32
function du:math/random
scoreboard players operation temp_1 du_data = out_0 du_data

#displace
execute if score $du.dim du_data matches -1 if data block -29999999 0 1600 RecordItem.tag.du.struct_reg_nether positioned ~-7 ~ ~-7 run function du:world/generation/struct_gen/shift_x
execute if score $du.dim du_data matches 0 if data block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld positioned ~-7 ~ ~-7 run function du:world/generation/struct_gen/shift_x
execute if score $du.dim du_data matches 1 if data block -29999999 0 1600 RecordItem.tag.du.struct_reg_end positioned ~-7 ~ ~-7 run function du:world/generation/struct_gen/shift_x

