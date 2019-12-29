summon area_effect_cloud ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.init"],Duration:2147483647}
execute as @e[tag=chunk_scan.chunk,tag=chunk_scan.init] at @s run function chunk_scan:chunk/init_2