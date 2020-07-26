
#> $world.out_0: returns 1 for not found, and 0 for found

#check biome id
data modify storage du:temp var set from storage du:temp object.biome
execute store success score $world.out_0 du_data run data modify storage du:temp var set from storage du:temp list[0].biomes[0]

#loop list
data remove storage du:temp list[0].biomes[0]
execute if score $world.out_0 du_data matches 1 if data storage du:temp list[0].biomes[0] run function du:world/generation/struct_gen/surface/check_biomes 
