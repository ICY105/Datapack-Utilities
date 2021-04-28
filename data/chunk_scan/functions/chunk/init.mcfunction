
summon marker ~ 0 ~ {Tags:["chunk_scan.init","chunk_scan.chunk","chunk_scan.gen"]}
execute as @e[type=marker,tag=chunk_scan.init] at @s run function chunk_scan:chunk/init_2
