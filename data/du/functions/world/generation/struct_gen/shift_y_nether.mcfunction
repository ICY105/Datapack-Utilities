
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed
## temp_0: loop counter

execute if score temp_0 du_data matches 1 if block ~ ~1 ~ #du:internal/decoration in minecraft:overworld run function du:world/generation/struct_gen/gen_struct
execute if score temp_0 du_data matches 1.. positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:bedrock run function du:world/generation/struct_gen/shift_y_nether
