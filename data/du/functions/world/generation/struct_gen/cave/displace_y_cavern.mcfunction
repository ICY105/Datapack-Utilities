
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $math.out_0: location

## $world.in_0: y value
## $world.in_1: structure size


# y
scoreboard players set $math.in_0 du_data 24
scoreboard players set $math.out_0 du_data -1

execute if block ~ 208 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 200 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1

execute if block ~ 192 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 183 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 176 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 168 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 160 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 152 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 144 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 136 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1

execute if block ~ 128 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 120 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 112 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 104 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 96 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 88 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 80 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 72 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1

execute if block ~ 64 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 56 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 48 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 40 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 32 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 24 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 16 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1
execute if block ~ 8 ~ #du:internal/decoration run scoreboard players remove $math.in_0 du_data 1

execute if score $math.in_0 du_data matches 0.. run function du:world/utils/random_seeded

#displace value
execute if score $math.out_0 du_data matches 23 positioned ~ 192 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 22 positioned ~ 184 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 21 positioned ~ 176 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 20 positioned ~ 168 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 19 positioned ~ 160 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 18 positioned ~ 152 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 17 positioned ~ 144 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 16 positioned ~ 136 ~ run function du:world/generation/struct_gen/cave/spawn_struct

execute if score $math.out_0 du_data matches 15 positioned ~ 128 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 14 positioned ~ 120 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 13 positioned ~ 112 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 12 positioned ~ 104 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 11 positioned ~ 96 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 10 positioned ~ 88 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 9 positioned ~ 80 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 8 positioned ~ 72 ~ run function du:world/generation/struct_gen/cave/spawn_struct

execute if score $math.out_0 du_data matches 7 positioned ~ 64 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 6 positioned ~ 56 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 5 positioned ~ 48 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 4 positioned ~ 40 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 3 positioned ~ 32 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 2 positioned ~ 24 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 1 positioned ~ 16 ~ run function du:world/generation/struct_gen/cave/spawn_struct
execute if score $math.out_0 du_data matches 0 positioned ~ 8 ~ run function du:world/generation/struct_gen/cave/spawn_struct

