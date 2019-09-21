
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed


scoreboard players add in_3 du_data 48

scoreboard players add in_2 du_data 48
execute positioned ~48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players remove in_3 du_data 48
execute positioned ~48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players remove in_3 du_data 48
execute positioned ~48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk

scoreboard players remove in_2 du_data 48
execute positioned ~ 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players add in_3 du_data 48
execute positioned ~ 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players add in_3 du_data 48
execute positioned ~ 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk

scoreboard players remove in_2 du_data 48
execute positioned ~-48 0 ~48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players remove in_3 du_data 48
execute positioned ~-48 0 ~ if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
scoreboard players remove in_3 du_data 48
execute positioned ~-48 0 ~-48 if block ~ ~ ~ #du:internal/chunk_marker run function du:world/generation/handle_super_chunk
