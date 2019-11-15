
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed

execute if score $du.dim du_data matches 1 in minecraft:the_end run function du:world/generation/ore_gen/generate_2
execute if score $du.dim du_data matches 0 in minecraft:overworld run function du:world/generation/ore_gen/generate_2
execute if score $du.dim du_data matches -1 in minecraft:the_nether run function du:world/generation/ore_gen/generate_2

#reset scores
scoreboard players set temp_1 du_data -1
scoreboard players set temp_2 du_data -1
scoreboard players set temp_3 du_data -1
