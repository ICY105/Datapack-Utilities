
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed
#> temp_0: loop counter -> reset x
#> temp_1: reset z

#set range
scoreboard players set temp_0 du_data 256
execute if block ~ 127 ~ #du:internal/decoration run scoreboard players set temp_0 du_data 128

#nether
execute if score $du.dim du_data matches -1 run scoreboard players set temp_0 du_data 1
execute if score $du.dim du_data matches -1 positioned ~ 28 ~ in minecraft:the_nether run function du:world/generation/struct_gen/shift_y_nether

#find surface
execute if score $du.dim du_data matches 0 if score temp_0 du_data matches 128 positioned ~ 127 ~ in minecraft:overworld run function du:world/generation/struct_gen/shift_y_2
execute if score $du.dim du_data matches 0 if score temp_0 du_data matches 256 positioned ~ 255 ~ in minecraft:overworld run function du:world/generation/struct_gen/shift_y_2
execute if score $du.dim du_data matches 1 if score temp_0 du_data matches 128 positioned ~ 127 ~ in minecraft:the_end run function du:world/generation/struct_gen/shift_y_2
execute if score $du.dim du_data matches 1 if score temp_0 du_data matches 256 positioned ~ 255 ~ in minecraft:the_end run function du:world/generation/struct_gen/shift_y_2

#reset x/z
scoreboard players set temp_0 du_data -1
scoreboard players set temp_1 du_data -1
