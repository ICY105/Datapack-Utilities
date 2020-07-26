
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

execute unless block ~ ~ ~ #du:fluids run function du:world/generation/struct_gen/surface/start
execute if block ~ ~ ~ #du:fluids run function du:world/generation/struct_gen/scan_chunk_cavern_3
execute if score $world.in_0 du_data matches 0 run function du:world/generation/struct_gen/surface/start

scoreboard players set $world.in_0 du_data -10
 