
#> $world.x: x cord
#> $world.z: z cord
#> $world.dim: current dimension
#* $world.seed: world seed

#data
data modify storage du:temp object set value {dimension:"",biome:""}
data modify storage du:temp object.dimension set from entity @p[distance=0..] Dimension
function du:world/utils/get_biome
data modify storage du:temp object.biome set from storage du:temp output

#get pos
execute store result score $world.x du_data run data get entity @s Pos[0]
execute store result score $world.z du_data run data get entity @s Pos[2]

#reset LCG
scoreboard players set $world.rng_seed du_data -2147483648

#structure generator
execute if score $world.reg_id du_data matches 2.. run function du:world/generation/struct_gen/registry_check

#ore generator
execute if score $world.reg_id du_data matches 2.. run function du:world/generation/ore_gen/registry_check

#run custom functions
function #du:generation/chunk
