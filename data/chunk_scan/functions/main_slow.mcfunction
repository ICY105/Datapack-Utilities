
schedule function chunk_scan:main_slow 20t replace
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~16 0 ~16 unless entity @e[distance=..75,type=marker,tag=chunk_scan.chunk] run summon marker ~ 0 ~ {Tags:["chunk_scan.init","chunk_scan.chunk","chunk_scan.gen"]}
