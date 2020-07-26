
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: loop counter

scoreboard players set $world.in_0 du_data 254
execute positioned ~ 254 ~ run function du:world/generation/struct_gen/scan_chunk_2
execute if score $world.in_0 du_data matches 0 positioned ~ 0 ~ run function du:world/generation/struct_gen/sky/start

#bottom solid -> surface or cavern -> surface, cave, sky
#bottom not solid -> void of sky -> void, surface, sky

# surface -> surface, liquid, sky, cave
# surface sky -> surface, sky
# surface-cavern -> surface, liquid
# cavern-cave -> cave
# void -> void