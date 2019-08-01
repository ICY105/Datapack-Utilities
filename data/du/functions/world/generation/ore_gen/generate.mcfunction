
execute if score in_2 du_data matches 1 in minecraft:the_end run function du:world/generation/ore_gen/generate_2
execute if score in_2 du_data matches 0 in minecraft:overworld run function du:world/generation/ore_gen/generate_2
execute if score in_2 du_data matches -1 in minecraft:the_nether run function du:world/generation/ore_gen/generate_2
