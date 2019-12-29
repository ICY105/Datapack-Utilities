
execute if block ~ ~ ~ #du:internal/furnace-like align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_furnace,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["du_furnace","du_fur_basic"],Duration:2000000000}
execute if block ~ ~ ~ minecraft:campfire align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_campfire,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["du_campfire"],Duration:2000000000}

scoreboard players remove $crafting.in_0 du_data 1
execute if score $crafting.in_0 du_data matches 1.. unless block ~ ~ ~ #du:internal/furnace-like unless block ~ ~ ~ minecraft:campfire positioned ^ ^ ^0.025 run function du:custom_furnace/place