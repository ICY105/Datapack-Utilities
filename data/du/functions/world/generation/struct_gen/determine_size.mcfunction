
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: structure size

#copy registry
execute if score $world.dim du_data matches -1 run data modify storage du:temp object set from storage du:struct_reg nether
execute if score $world.dim du_data matches 0 run data modify storage du:temp object set from storage du:struct_reg overworld
execute if score $world.dim du_data matches 1 run data modify storage du:temp object set from storage du:struct_reg end

#collapse to chunk grid
scoreboard players operation $math.in_0 du_data = $world.x du_data
scoreboard players operation $math.in_1 du_data = $world.z du_data

scoreboard players set $math.temp_0 du_data 16

scoreboard players operation $math.in_0 du_data /= $math.temp_0 du_data
scoreboard players operation $math.in_1 du_data /= $math.temp_0 du_data

### Size

scoreboard players set $world.in_0 du_data -1
execute if data storage du:temp object.tiny[0] run scoreboard players set $world.in_0 du_data 0

# check small

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players set $math.temp_2 du_data 3

scoreboard players operation $math.temp_0 du_data %= $math.temp_2 du_data
scoreboard players operation $math.temp_1 du_data %= $math.temp_2 du_data

execute if score $math.temp_0 du_data matches 0 if score $math.temp_1 du_data matches 0 if data storage du:temp object.small[0] run scoreboard players set $world.in_0 du_data 1

# check medium

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players set $math.temp_2 du_data 12

scoreboard players operation $math.temp_0 du_data %= $math.temp_2 du_data
scoreboard players operation $math.temp_1 du_data %= $math.temp_2 du_data

execute if score $math.temp_0 du_data matches 0..2 if score $math.temp_1 du_data matches 0..2 if data storage du:temp object.medium[0] run scoreboard players set $world.in_0 du_data -1
execute if score $math.temp_0 du_data matches 0 if score $math.temp_1 du_data matches 0 if data storage du:temp object.medium[0] run scoreboard players set $world.in_0 du_data 2

execute if score $math.temp_0 du_data matches 6..8 if score $math.temp_1 du_data matches 6..8 if data storage du:temp object.medium[0] run scoreboard players set $world.in_0 du_data -1
execute if score $math.temp_0 du_data matches 6 if score $math.temp_1 du_data matches 6 if data storage du:temp object.medium[0] run scoreboard players set $world.in_0 du_data 2

# check large

scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data
scoreboard players set $math.temp_2 du_data 48

scoreboard players operation $math.temp_0 du_data %= $math.temp_2 du_data
scoreboard players operation $math.temp_1 du_data %= $math.temp_2 du_data

execute if score $math.temp_0 du_data matches 5..9 if score $math.temp_1 du_data matches 5..9 if data storage du:temp object.large[0] run scoreboard players set $world.in_0 du_data -1
execute if score $math.temp_0 du_data matches 5 if score $math.temp_1 du_data matches 5 if data storage du:temp object.large[0] run scoreboard players set $world.in_0 du_data 3

# Configure Registry
execute if score $world.in_0 du_data matches 0 run data modify storage du:temp list set from storage du:temp object.tiny
execute if score $world.in_0 du_data matches 1 run data modify storage du:temp list set from storage du:temp object.small
execute if score $world.in_0 du_data matches 2 run data modify storage du:temp list set from storage du:temp object.medium
execute if score $world.in_0 du_data matches 3 run data modify storage du:temp list set from storage du:temp object.large

#forceload if needed
execute if score $world.in_0 du_data matches 2 run forceload add ~ ~ ~40 ~40
execute if score $world.in_0 du_data matches 2 run forceload remove ~ ~ ~40 ~40

execute if score $world.in_0 du_data matches 3 run forceload add ~ ~ ~72 ~72
execute if score $world.in_0 du_data matches 3 run forceload remove ~ ~ ~72 ~72

#run next function
execute if score $world.in_0 du_data matches 0..3 run function du:world/generation/struct_gen/displace


