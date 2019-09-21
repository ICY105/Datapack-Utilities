
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##temp_0: y value -> loop counter

execute if score temp_0 du_data matches 1 if block ~ ~1 ~ #du:air in minecraft:overworld run function du:world/generation/struct_gen/gen_struct
execute if score temp_0 du_data matches 1.. positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:bedrock run function du:world/generation/struct_gen/gen_displace_y_nether
