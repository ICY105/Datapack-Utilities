
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

## $world.in_1: ore ID
## $world.in_1: min y
## $world.in_2: max y
## $world.in_3: min veins
## $world.in_4: max veins
## $world.in_5: min vein size
## $world.in_6: max vein size

## $world.in_7: number of veins
#> $world.in_8: vein size

#> $world.temp_0: x displacement
#> $world.temp_1: z displacement
#> $world.temp_2: y displacement

### config values

# X value
scoreboard players set $math.in_0 du_data 14
function du:world/random_seeded
scoreboard players operation $world.temp_0 du_data = $math.out_0 du_data

# Z value
scoreboard players set $math.in_0 du_data 14
function du:world/random_seeded
scoreboard players operation $world.temp_1 du_data = $math.out_0 du_data

# Y value
scoreboard players operation $math.in_0 du_data = $world.in_2 du_data
scoreboard players operation $math.in_0 du_data -= $world.in_1 du_data
scoreboard players add $math.in_0 du_data 1
function du:world/random_seeded
scoreboard players operation $math.out_0 du_data += $world.in_1 du_data
scoreboard players operation $world.temp_2 du_data = $math.out_0 du_data

# Vein Size
scoreboard players operation $math.in_0 du_data = $world.in_6 du_data
scoreboard players operation $math.in_0 du_data -= $world.in_5 du_data
scoreboard players add $math.in_0 du_data 1
function du:world/random_seeded
scoreboard players operation $math.out_0 du_data += $world.in_5 du_data
scoreboard players operation $world.in_8 du_data = $math.out_0 du_data

#id
function du:world/generation/ore_gen/displace_x

scoreboard players remove $world.in_7 du_data 1
execute if score $world.in_7 du_data matches 1.. run function du:world/generation/ore_gen/generate_veins_loop

