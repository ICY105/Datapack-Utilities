
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

execute if block ~ ~ ~ #du:unbreakable positioned ~ 0 ~ run function du:world/generation/struct_gen/scan_chunk_cavern 
execute if score $world.in_0 du_data matches 0 positioned ~ 0 ~ run function du:world/generation/struct_gen/cave/start-cavern

execute unless block ~ ~ ~ #du:unbreakable if block ~ 0 ~ #chunk_scan:base_marker if score $world.in_0 du_data matches 32.. run function du:world/generation/struct_gen/cave/start-default
execute unless block ~ ~ ~ #du:unbreakable if score $world.in_0 du_data matches ..192 run function du:world/generation/struct_gen/sky/start
execute unless block ~ ~ ~ #du:unbreakable run function du:world/generation/struct_gen/surface/start

scoreboard players set $world.in_0 du_data -10
