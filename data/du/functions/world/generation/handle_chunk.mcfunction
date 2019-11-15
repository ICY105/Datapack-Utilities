
#> $du.x: x cord
#> $du.z: z cord
#> $du.dim: current dimension
#> $du.biome: current biome
#* $du.seed: world seed

#get pos
execute store result score $du.x du_data run data get entity @s Pos[0]
execute store result score $du.z du_data run data get entity @s Pos[2]
execute store result score $du.dim du_data run data get entity @s Dimension

#get biome
function du:world/get_biome_id
scoreboard players operation $du.biome du_data = out_0 du_data

#verify pos
scoreboard players operation temp_0 du_data = $du.x du_data
scoreboard players operation temp_1 du_data = $du.z du_data
scoreboard players set temp_2 du_data 16

scoreboard players operation temp_0 du_data %= temp_2 du_data
scoreboard players operation temp_1 du_data %= temp_2 du_data

kill @s
execute if score temp_0 du_data matches 0 if score temp_1 du_data matches 0 run function du:world/generation/generate_chunk
