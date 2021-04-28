
execute positioned ~-8 0 ~-8 unless entity @e[distance=..23,type=marker,tag=chunk_scan.chunk] run function chunk_scan:chunk/init
execute positioned ~-8 0 ~-8 as @e[distance=0..,type=marker,tag=chunk_scan.gen,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate
