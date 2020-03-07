
#get weight
execute store result score $world.temp_0 du_data run data get storage du:temp list[0].weight

#decr weight
scoreboard players operation $math.out_0 du_data -= $world.temp_0 du_data

#loop
execute if score $math.out_0 du_data matches 1.. run data remove storage du:temp list[0]
execute if score $world.temp_0 du_data matches 1.. if score $math.out_0 du_data matches 1.. run function du:world/generation/struct_gen/get_weighted_struct
