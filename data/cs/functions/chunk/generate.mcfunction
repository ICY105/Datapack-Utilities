
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
kill @e[type=area_effect_cloud,distance=..1,tag=cs.chunk]

execute positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}

function #cs:generate
