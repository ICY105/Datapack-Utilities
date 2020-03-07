
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

## $world.in_0: ore ID
## $world.in_1: min y
## $world.in_2: max y
## $world.in_3: min veins
## $world.in_4: max veins
## $world.in_5: min vein size
## $world.in_6: max vein size

#> $world.in_7: number of veins

# number of veins
scoreboard players operation $math.in_0 du_data = $world.in_4 du_data
scoreboard players operation $math.in_0 du_data -= $world.in_3 du_data
scoreboard players add $math.in_0 du_data 1
function du:world/random_seeded
scoreboard players operation $math.out_0 du_data += $world.in_3 du_data
scoreboard players operation $world.in_7 du_data = $math.out_0 du_data

## run generate function
execute if score $world.in_7 du_data matches 1.. run function du:world/generation/ore_gen/generate_veins_loop
