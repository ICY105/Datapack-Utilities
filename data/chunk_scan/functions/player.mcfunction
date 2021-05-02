
execute positioned ~16 0 ~16 unless entity @e[distance=..68,type=marker,tag=chunk_scan.chunk] run function chunk_scan:chunk/init
execute positioned ~-16 0 ~-16 as @e[distance=0..,type=marker,tag=chunk_scan.gen,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate
