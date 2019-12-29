
execute unless predicate chunk_scan:is_loaded run function chunk_scan:chunk/load_chunk
execute if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
