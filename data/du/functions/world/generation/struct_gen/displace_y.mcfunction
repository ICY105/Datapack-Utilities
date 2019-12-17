
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> temp_0: loop counter

#set range
scoreboard players set $world.temp_0 du_data 256
execute if block ~ 127 ~ #du:internal/decoration run scoreboard players set $world.temp_0 du_data 128

#nether
execute if score $world.dim du_data matches -1 run scoreboard players set $world.temp_0 du_data 1
execute if score $world.dim du_data matches -1 positioned ~ 28 ~ run function du:world/generation/struct_gen/displace_y_nether

#find surface
execute if score $world.dim du_data matches 0..1 if score $world.temp_0 du_data matches 128 positioned ~ 127 ~ run function du:world/generation/struct_gen/displace_y_2
execute if score $world.dim du_data matches 0..1 if score $world.temp_0 du_data matches 256 positioned ~ 255 ~ run function du:world/generation/struct_gen/displace_y_2
