
#> $world.x: x cord
#> $world.z: z cord
#> $world.dim: current dimension
#> $world.biome: current biome
#* $world.seed: world seed

#get pos
execute store result score $world.x du_data run data get entity @s Pos[0]
execute store result score $world.z du_data run data get entity @s Pos[2]

scoreboard players set $world.dim du_data 0
execute if predicate du:world/nether run scoreboard players set $world.dim du_data -1
execute if predicate du:world/end run scoreboard players set $world.dim du_data 1

#reset LCG
scoreboard players set $world.rng_seed du_data -2147483648

#get biome id
loot replace block -29999999 0 1601 container.0 loot du:biomes
execute store result score $world.biome du_data run data get block -29999999 0 1601 Items[0].tag.biome_id

#structure generator
execute if score $world.reg_id du_data matches 2.. run function du:world/generation/struct_gen/determine_size

#ore generator
execute if score $world.reg_id du_data matches 2.. run function du:world/generation/ore_gen/registry_check

#run custom functions
execute if score $world.dim du_data matches -1 run function #du:chunk_gen/the_nether
execute if score $world.dim du_data matches 0 run function #du:chunk_gen/overworld
execute if score $world.dim du_data matches 1 run function #du:chunk_gen/the_end
