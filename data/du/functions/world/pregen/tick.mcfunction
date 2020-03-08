
#next position
execute unless entity @e[tag=chunk_scan.chunk] run function du:world/pregen/next
execute as @e[tag=chunk_scan.chunk,limit=1] at @s run function chunk_scan:chunk/generate