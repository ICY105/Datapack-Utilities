
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#copy reg to temp
data merge storage du:temp {list:[]}
execute if score $world.dim du_data matches -1 run data modify storage du:temp list set from storage du:ore_reg nether
execute if score $world.dim du_data matches 0 run data modify storage du:temp list set from storage du:ore_reg overworld
execute if score $world.dim du_data matches 1 run data modify storage du:temp list set from storage du:ore_reg end

#run loop
execute if data storage du:temp list[0] run function du:world/generation/ore_gen/registry_loop
