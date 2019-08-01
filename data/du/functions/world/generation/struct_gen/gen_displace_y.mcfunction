execute if block ~ 128 ~ #du:internal/decoration run scoreboard players set temp_0 du_data 128
execute if block ~ 128 ~ #du:internal/decoration positioned ~ 128 ~ run function du:world/generation/struct_gen/gen_find_surface
execute unless block ~ 128 ~ #du:internal/decoration run scoreboard players set temp_0 du_data 256
execute unless block ~ 128 ~ #du:internal/decoration positioned ~ 255 ~ run function du:world/generation/struct_gen/gen_find_surface
