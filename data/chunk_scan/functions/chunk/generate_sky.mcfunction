
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s unless block ~ ~ ~ #chunk_scan:sky_marker run function #chunk_scan:generate

execute at @s positioned ~16 0 ~ unless block ~ 255 ~ #chunk_scan:sky_marker run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.sky"],Duration:2147483647}
execute at @s positioned ~-16 0 ~ unless block ~ 255 ~ #chunk_scan:sky_marker run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.sky"],Duration:2147483647}
execute at @s positioned ~ 0 ~16 unless block ~ 255 ~ #chunk_scan:sky_marker run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.sky"],Duration:2147483647}
execute at @s positioned ~ 0 ~-16 unless block ~ 255 ~ #chunk_scan:sky_marker run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.sky"],Duration:2147483647}

execute at @s run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]
execute at @s run setblock ~ 255 ~ minecraft:barrier
execute at @s run kill @e[type=area_effect_cloud,distance=..1,tag=chunk_scan.chunk]


