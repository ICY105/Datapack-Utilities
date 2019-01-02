
execute unless block ~ ~ ~ #du:internal/decoration run function du:world/generation/struct_gen/gen_struct_run
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 0.. if block ~ ~ ~ #du:internal/decoration positioned ~ ~-1 ~ run function du:world/generation/struct_gen/gen_find_surface
