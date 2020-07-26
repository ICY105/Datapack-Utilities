
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

execute if block ~ ~1 ~ #du:internal/decoration run function du:world/generation/struct_gen/scan_chunk_cavern_2

scoreboard players remove $world.in_0 du_data 1
execute if score $world.in_0 du_data matches 1.. positioned ~ ~1 ~ run function du:world/generation/struct_gen/scan_chunk_cavern
