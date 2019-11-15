
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed
## temp_0: loop counter

execute unless block ~ ~ ~ #du:internal/decoration in minecraft:overworld run function du:world/generation/struct_gen/gen_struct
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 0.. positioned ~ ~-1 ~ run function du:world/generation/struct_gen/shift_y_2
