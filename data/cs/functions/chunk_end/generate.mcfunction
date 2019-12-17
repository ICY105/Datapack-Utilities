
fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]
kill @s

execute positioned ~16 255 ~ unless block ~ ~ ~ minecraft:moving_piston run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~16 255 ~ unless block ~ ~ ~ minecraft:moving_piston run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]

execute positioned ~-16 255 ~ unless block ~ ~ ~ minecraft:moving_piston run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~-16 255 ~ unless block ~ ~ ~ minecraft:moving_piston run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]

execute positioned ~ 255 ~16 unless block ~ ~ ~ minecraft:moving_piston run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ 255 ~16 unless block ~ ~ ~ minecraft:moving_piston run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]

execute positioned ~ 255 ~-16 unless block ~ ~ ~ minecraft:moving_piston run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ 255 ~-16 unless block ~ ~ ~ minecraft:moving_piston run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]

function #cs:generate
