
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

## $world.in_1: structure size
#> $world.temp_0: terminate previous loop

#> $math.in_0: input random

#check placement conditions
function du:world/generation/struct_gen/surface/check_location

#copy struct data
data modify storage du:temp list set value []
execute if score $world.out_0 du_data matches 1 if score $world.in_1 du_data matches 0 run data modify storage du:temp list append from storage du:struct_reg structures[0].tiny[{placement:0}]
execute if score $world.out_0 du_data matches 1 if score $world.in_1 du_data matches 1 run data modify storage du:temp list append from storage du:struct_reg structures[0].small[{placement:0}]
execute if score $world.out_0 du_data matches 1 if score $world.in_1 du_data matches 2 run data modify storage du:temp list append from storage du:struct_reg structures[0].medium[{placement:0}]
execute if score $world.out_0 du_data matches 1 if score $world.in_1 du_data matches 3 run data modify storage du:temp list append from storage du:struct_reg structures[0].large[{placement:0}]

execute if score $world.out_0 du_data matches 0 if score $world.in_1 du_data matches 0 run data modify storage du:temp list append from storage du:struct_reg structures[0].tiny[{placement:1}]
execute if score $world.out_0 du_data matches 0 if score $world.in_1 du_data matches 1 run data modify storage du:temp list append from storage du:struct_reg structures[0].small[{placement:1}]
execute if score $world.out_0 du_data matches 0 if score $world.in_1 du_data matches 2 run data modify storage du:temp list append from storage du:struct_reg structures[0].medium[{placement:1}]
execute if score $world.out_0 du_data matches 0 if score $world.in_1 du_data matches 3 run data modify storage du:temp list append from storage du:struct_reg structures[0].large[{placement:1}]

#get struct
scoreboard players set $math.in_0 du_data 0

execute store result score $world.temp_0 du_data run data get storage du:temp list
execute if score $world.temp_0 du_data matches 1.. run function du:world/generation/struct_gen/surface/check_structs

execute if score $math.in_0 du_data matches ..1000 run scoreboard players set $math.in_0 du_data 1000
function du:world/utils/random_seeded
function du:world/generation/struct_gen/get_weighted_struct

#get struct id
scoreboard players operation $world.in_1 du_data = $world.in_0 du_data

execute store result score $world.in_0 du_data run data get storage du:temp list[0].id
execute if score $world.in_0 du_data matches 1.. run function #du:generation/structure

scoreboard players operation $world.in_0 du_data = $world.in_1 du_data

#end find surface loop
scoreboard players set $math.out_0 du_data -1
