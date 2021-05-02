
execute if block ~ ~ ~ #du:internal/furnace-like align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_furnace,distance=..0.5] run summon marker ~ ~ ~ {Tags:["du_furnace","global.ignore"]}
execute if block ~ ~ ~ #minecraft:campfires align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_campfire,distance=..0.5] run summon marker ~ ~ ~ {Tags:["du_campfire","global.ignore"]}

scoreboard players remove $crafting.in_0 du_data 1
execute if score $crafting.in_0 du_data matches 1.. unless block ~ ~ ~ #du:internal/furnace-like unless block ~ ~ ~ #minecraft:campfires positioned ^ ^ ^0.025 run function du:custom_furnace/place
