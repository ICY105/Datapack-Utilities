
#next position
execute unless entity @e[tag=chunk_scan.gen] run function du:world/pregen/next
execute as @e[tag=chunk_scan.gen,limit=1] at @s run function chunk_scan:chunk/generate
