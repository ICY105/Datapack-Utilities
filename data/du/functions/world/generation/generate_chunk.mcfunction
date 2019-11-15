
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed

#structure generator
execute if entity @s[tag=du_super_chunk] if score $du.reg_id du_data matches 2.. in minecraft:overworld run function du:world/generation/struct_gen/start

#ore generator
execute if score $du.reg_id du_data matches 2.. in minecraft:overworld run function du:world/generation/ore_gen/generate_ores

#run custom functions
execute if score $du.dim du_data matches -1 run function #du:world/chunk_gen_nether
execute if score $du.dim du_data matches 0 run function #du:world/chunk_gen_overworld
execute if score $du.dim du_data matches 1 run function #du:world/chunk_gen_end
