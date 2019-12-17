execute unless predicate cs:in_the_end if block ~ 0 ~ bedrock run function cs:chunk/init

execute if predicate cs:in_the_end unless block ~ 255 ~ moving_piston run function cs:chunk_end/init

execute unless predicate cs:in_the_end positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=cs.chunk,sort=nearest,limit=1,predicate=!cs:near_render_distance] at @s run function cs:chunk/generate
execute if predicate cs:in_the_end positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=cs.chunk,sort=nearest,limit=1,predicate=!cs:near_render_distance] at @s run function cs:chunk_end/generate
