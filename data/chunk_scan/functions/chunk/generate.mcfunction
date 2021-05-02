
execute at @s[tag=chunk_scan.chunk] run function chunk_scan:generate/spread
execute at @s run function chunk_scan:chunk/generate_2

execute at @s positioned ~ 0 ~ if predicate chunk_scan:world_bottom run function #chunk_scan:generate
execute at @s positioned ~ -64 ~ if predicate chunk_scan:world_bottom run function #chunk_scan:generate
execute at @s positioned ~ 0 ~ unless predicate chunk_scan:world_bottom positioned ~ -64 ~ unless predicate chunk_scan:world_bottom run function chunk_scan:chunk/generate_2

tag @s remove chunk_scan.gen
execute unless entity @s[tag=chunk_scan.chunk] run kill @s
