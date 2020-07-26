
#> $math.in_0: random function input
#> $world.temp_0: loop counter
#> $world.temp_1: biome list mode
#> $world.temp_2: weight
#> $world.temp_3: is valid

#load data
execute store result score $world.temp_1 du_data run data get storage du:temp list[0].isBlacklist
execute store result score $world.temp_2 du_data run data get storage du:temp list[0].weight

scoreboard players set $world.temp_3 du_data 1

#biome
execute if score $world.temp_1 du_data matches 0..1 run function du:world/generation/struct_gen/surface/check_biomes
execute if score $world.temp_1 du_data matches 0..1 if score $world.temp_1 du_data = $world.out_0 du_data run scoreboard players set $world.temp_3 du_data 0

#cycle registry
execute if score $world.temp_3 du_data matches 1 run scoreboard players operation $math.in_0 du_data += $world.temp_3 du_data
execute if score $world.temp_3 du_data matches 1 run data modify storage du:temp list append from storage du:temp list[0]
data remove storage du:temp list[0]

#loop
scoreboard players remove $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1.. run function du:world/generation/struct_gen/surface/check_structs
