
execute unless entity @s[tag=chunk_scan.chunk] run kill @s

execute at @s[tag=chunk_scan.chunk] unless entity @e[distance=..32,tag=chunk_scan.chunk,tag=!chunk_scan.gen] run function chunk_scan:chunk/generate_2
execute at @s[tag=!chunk_scan.chunk] run function chunk_scan:chunk/generate_2

tag @s remove chunk_scan.gen
kill @e[tag=chunk_scan.gen,distance=..1]
