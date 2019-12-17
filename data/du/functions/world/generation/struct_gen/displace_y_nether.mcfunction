
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed
##>temp_0: loop counter

execute if score $world.temp_0 du_data matches 1 if block ~ ~1 ~ #du:internal/decoration run function du:world/generation/struct_gen/spawn_struct

execute if score $world.temp_0 du_data matches 1 positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:bedrock run function du:world/generation/struct_gen/displace_y_nether
