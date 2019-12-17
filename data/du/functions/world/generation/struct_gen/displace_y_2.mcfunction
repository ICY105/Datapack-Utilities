
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

##>temp_0: loop counter

execute unless block ~ ~ ~ #du:internal/decoration run function du:world/generation/struct_gen/spawn_struct

scoreboard players remove $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 0.. positioned ~ ~-1 ~ run function du:world/generation/struct_gen/displace_y_2
