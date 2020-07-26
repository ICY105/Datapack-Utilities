
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

#copy reg to temp
data merge storage du:temp {list:[]}
execute store result score $world.in_0 du_data run data get storage du:struct_reg structures
execute if score $world.in_0 du_data matches 1.. run function du:world/generation/struct_gen/registry_cycle

#run displace
execute if score $world.in_0 du_data matches 1.. positioned ~4 ~ ~4 run function du:world/generation/struct_gen/displace_x
