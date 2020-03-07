
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

## $world.in_0: structure size

#> $world.temp_0: x displace
#> $world.temp_1: z displace

# x
scoreboard players set $math.in_0 du_data 9
function du:world/random_seeded
scoreboard players operation $world.temp_0 du_data = $math.out_0 du_data

# z
scoreboard players set $math.in_0 du_data 9
function du:world/random_seeded
scoreboard players operation $world.temp_1 du_data = $math.out_0 du_data

#run displace
execute if score $world.in_0 du_data matches 0 positioned ~4 ~ ~4 run function du:world/generation/struct_gen/displace_x
execute if score $world.in_0 du_data matches 1 positioned ~2 ~ ~2 run function du:world/generation/struct_gen/displace_x
execute if score $world.in_0 du_data matches 2..3 positioned ~ ~ ~ run function du:world/generation/struct_gen/displace_x
