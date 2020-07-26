
execute unless block ~ 255 ~ #chunk_scan:sky_marker run function chunk_scan:chunk/init
execute positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate_sky
