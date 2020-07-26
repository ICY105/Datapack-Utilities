
#save in_0
scoreboard players operation $math.temp_8 du_data = $math.in_0 du_data

#get seed
scoreboard players operation $math.in_0 du_data = $world.x du_data
scoreboard players operation $math.in_1 du_data = $world.z du_data
function du:math/seed_from_position
scoreboard players operation $world.rng_seed du_data = $math.out_0 du_data
execute if score $world.rng_seed du_data matches -2147483648 run scoreboard players set $world.rng_seed du_data -2147483647

#restore in_0
scoreboard players operation $math.in_0 du_data = $math.temp_8 du_data
