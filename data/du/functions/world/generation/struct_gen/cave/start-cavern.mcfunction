
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

## $world.in_0: y value
#> $world.in_1: structure size

#collapse to chunk grid
scoreboard players operation $math.in_0 du_data = $world.x du_data
scoreboard players operation $math.in_1 du_data = $world.z du_data
scoreboard players operation $math.in_0 du_data /= $cons.16 du_data
scoreboard players operation $math.in_1 du_data /= $cons.16 du_data

### Size

scoreboard players set $world.in_1 du_data -1
execute if data storage du:struct_reg structures[0].tiny[{placement:2}] run scoreboard players set $world.in_1 du_data 0

# check small

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players operation $math.temp_0 du_data %= $cons.4 du_data
scoreboard players operation $math.temp_1 du_data %= $cons.4 du_data

execute if score $math.temp_0 du_data matches 0 if score $math.temp_1 du_data matches 0 if data storage du:struct_reg structures[0].small[{placement:2}] run scoreboard players set $world.in_1 du_data 1

# check medium

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players operation $math.temp_0 du_data %= $cons.16 du_data
scoreboard players operation $math.temp_1 du_data %= $cons.16 du_data

execute if score $math.temp_0 du_data matches 0..3 if score $math.temp_1 du_data matches 0..3 if data storage du:struct_reg structures[0].medium[{placement:2}] run scoreboard players set $world.in_1 du_data -1
execute if score $math.temp_0 du_data matches 0 if score $math.temp_1 du_data matches 0 if data storage du:struct_reg structures[0].medium[{placement:2}] run scoreboard players set $world.in_1 du_data 2

execute if score $math.temp_0 du_data matches 6..8 if score $math.temp_1 du_data matches 6..8 if data storage du:struct_reg structures[0].medium[{placement:2}] run scoreboard players set $world.in_1 du_data -1
execute if score $math.temp_0 du_data matches 6 if score $math.temp_1 du_data matches 6 if data storage du:struct_reg structures[0].medium[{placement:2}] run scoreboard players set $world.in_1 du_data 2

# check large

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players operation $math.temp_0 du_data %= $cons.48 du_data
scoreboard players operation $math.temp_1 du_data %= $cons.48 du_data

execute if score $math.temp_0 du_data matches 5..9 if score $math.temp_1 du_data matches 5..9 if data storage du:struct_reg structures[0].large[{placement:2}] run scoreboard players set $world.in_1 du_data -1
execute if score $math.temp_0 du_data matches 5 if score $math.temp_1 du_data matches 5 if data storage du:struct_reg structures[0].large[{placement:2}] run scoreboard players set $world.in_1 du_data 3

#run next function
execute if score $world.in_1 du_data matches 0..3 run function du:world/generation/struct_gen/cave/displace_y_cavern


