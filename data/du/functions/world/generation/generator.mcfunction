execute positioned ~48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk

execute positioned ~ 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~ 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~ 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk

execute positioned ~-48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~-48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
execute positioned ~-48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk

scoreboard players set temp_1 du_data -1
scoreboard players set temp_2 du_data -1