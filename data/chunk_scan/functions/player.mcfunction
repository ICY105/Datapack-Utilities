execute unless predicate chunk_scan:in_the_end if block ~ 0 ~ bedrock run function chunk_scan:chunk/init

execute if predicate chunk_scan:in_the_end unless block ~ 255 ~ moving_piston run function chunk_scan:chunk/init

execute unless predicate chunk_scan:in_the_end positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate
execute if predicate chunk_scan:in_the_end positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate_end
