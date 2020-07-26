
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

scoreboard players set $math.in_0 du_data 8
function du:world/utils/random_seeded

execute if score $math.out_0 du_data matches 0 positioned ~ ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 1 positioned ~1 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 2 positioned ~2 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 3 positioned ~3 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 4 positioned ~4 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 5 positioned ~5 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 6 positioned ~6 ~ ~ run function du:world/generation/struct_gen/displace_z
execute if score $math.out_0 du_data matches 7 positioned ~7 ~ ~ run function du:world/generation/struct_gen/displace_z

scoreboard players set $math.out_0 du_data -1
