
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

tag @s remove chunk_scan.gen

execute at @s positioned ~16 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..8] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen"]}
execute at @s positioned ~-16 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..8] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen"]}
execute at @s positioned ~ 0 ~16 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..8] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen"]}
execute at @s positioned ~ 0 ~-16 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..8] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen"]}

execute at @s run function #chunk_scan:generate
