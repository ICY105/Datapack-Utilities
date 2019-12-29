
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s run fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
execute at @s run kill @e[type=area_effect_cloud,distance=..1,tag=chunk_scan.chunk]

execute at @s positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}

execute at @s run function #chunk_scan:generate
