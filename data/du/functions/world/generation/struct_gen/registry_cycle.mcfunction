
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

##> $world.in_0: loop counter

#test for dimension ID
data modify storage du:temp var set from storage du:temp object.dimension
execute store success score $world.temp_0 du_data run data modify storage du:temp var set from storage du:struct_reg structures[0].dimension

#loop until ID is found
execute if score $world.temp_0 du_data matches 1 run data modify storage du:struct_reg structures append from storage du:struct_reg structures[0]
execute if score $world.temp_0 du_data matches 1 run data remove storage du:struct_reg structures[0]

execute if score $world.temp_0 du_data matches 1 run scoreboard players remove $world.in_0 du_data 1
execute if score $world.in_0 du_data matches 1.. if score $world.temp_0 du_data matches 1 run function du:world/generation/struct_gen/registry_cycle
