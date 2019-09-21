
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##temp_0: y value -> loop counter

execute unless block ~ ~ ~ #du:internal/decoration in minecraft:overworld run function du:world/generation/struct_gen/gen_struct
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 0.. positioned ~ ~-1 ~ run function du:world/generation/struct_gen/gen_displace_y_2
