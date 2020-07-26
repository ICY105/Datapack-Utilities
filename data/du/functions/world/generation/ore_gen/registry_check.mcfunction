
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

#copy reg to temp
data merge storage du:temp {list:[]}
execute store result score $world.in_0 du_data run data get storage du:ore_reg ores
execute if score $world.in_0 du_data matches 1.. run function du:world/generation/ore_gen/registry_cycle
execute if score $world.in_0 du_data matches 1.. run data modify storage du:temp list set from storage du:ore_reg ores[0].list

#run loop
execute if data storage du:temp list[0] run function du:world/generation/ore_gen/registry_generation
