
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_1: ore ID
#> $world.in_1: min y
#> $world.in_2: max y
#> $world.in_3: min veins
#> $world.in_4: max veins
#> $world.in_5: min vein size
#> $world.in_6: max vein size
#> $world.temp_0: is blacklist
#- $world.temp_1: check biomes
#- $world.out_0: check biomes output

#load values
execute store result score $world.in_0 du_data run data get storage du:temp list[0].id
execute store result score $world.in_1 du_data run data get storage du:temp list[0].y_min
execute store result score $world.in_2 du_data run data get storage du:temp list[0].y_max
execute store result score $world.in_3 du_data run data get storage du:temp list[0].veins_min
execute store result score $world.in_4 du_data run data get storage du:temp list[0].veins_max
execute store result score $world.in_5 du_data run data get storage du:temp list[0].vein_size_min
execute store result score $world.in_6 du_data run data get storage du:temp list[0].vein_size_max
execute store result score $world.temp_0 du_data run data get storage du:temp list[0].isBlacklist

#check biome list
scoreboard players set $world.out_0 du_data 0
execute if score $world.temp_0 du_data matches -1 run scoreboard players set $world.out_0 du_data 2
execute if score $world.temp_0 du_data matches 0..1 run function du:world/generation/ore_gen/check_biomes
execute if score $world.temp_0 du_data matches 0 if score $world.out_0 du_data matches 1 run scoreboard players set $world.out_0 du_data 2
execute if score $world.temp_0 du_data matches 1 if score $world.out_0 du_data matches 0 run scoreboard players set $world.out_0 du_data 2
execute if score $world.out_0 du_data matches 2 run function du:world/generation/ore_gen/generate_veins

### remove entry, then repeat until temp is empty
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function du:world/generation/ore_gen/registry_loop
