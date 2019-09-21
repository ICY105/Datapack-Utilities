
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
#>temp_0: y value

#set range
scoreboard players set temp_0 du_data 256
execute if block ~ 127 ~ #du:internal/decoration run scoreboard players set temp_0 du_data 128

#nether
execute if score in_4 du_data matches -1 run scoreboard players set temp_0 du_data 1
execute if score in_4 du_data matches -1 positioned ~ 28 ~ in minecraft:the_nether run function du:world/generation/struct_gen/gen_displace_y_nether

#find surface
execute if score in_4 du_data matches 0 if score temp_0 du_data matches 128 positioned ~ 127 ~ run function du:world/generation/struct_gen/gen_displace_y_2
execute if score in_4 du_data matches 0 if score temp_0 du_data matches 256 positioned ~ 255 ~ run function du:world/generation/struct_gen/gen_displace_y_2
execute if score in_4 du_data matches 1 if score temp_0 du_data matches 128 positioned ~ 127 ~ in minecraft:the_end run function du:world/generation/struct_gen/gen_displace_y_2
execute if score in_4 du_data matches 1 if score temp_0 du_data matches 256 positioned ~ 255 ~ in minecraft:the_end run function du:world/generation/struct_gen/gen_displace_y_2
