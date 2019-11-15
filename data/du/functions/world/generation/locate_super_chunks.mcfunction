
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed

execute positioned ~48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk

execute positioned ~ 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~ 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~ 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk

execute positioned ~-48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~-48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
execute positioned ~-48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/spawn_super_chunk
