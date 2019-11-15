
#mark chunks around player
execute if score worldgen du_data matches 1 if score is_loaded du_data matches 1.. if score timer_20 du_data matches 1 as @a[gamemode=!spectator] at @s run function du:world/generation/start

#handle chunks
execute if score worldgen du_data matches 1 as @e[tag=du_chunk,sort=random,limit=1] at @s run function du:world/generation/handle_chunk
