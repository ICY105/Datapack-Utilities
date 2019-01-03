execute unless block ~ ~ ~ #du:internal/decoration run function du:world/generation/struct_gen/gen_struct
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 0.. positioned ~ ~-1 ~ run function du:world/generation/struct_gen/gen_find_surface
