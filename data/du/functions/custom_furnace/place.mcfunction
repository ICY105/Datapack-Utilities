
execute if block ~ ~ ~ #du:internal/furnace-like align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_furnace,distance=..0.5] run summon item_frame ~ ~ ~ {Tags:["du_furnace","du_fur_basic"],Fixed:1b,Invisible:1b}
execute if block ~ ~ ~ #minecraft:campfires align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=du_campfire,distance=..0.5] run summon item_frame ~ ~ ~ {Tags:["du_campfire"],Fixed:1b,Invisible:1b}

scoreboard players remove $crafting.in_0 du_data 1
execute if score $crafting.in_0 du_data matches 1.. unless block ~ ~ ~ #du:internal/furnace-like unless block ~ ~ ~ #minecraft:campfires positioned ^ ^ ^0.025 run function du:custom_furnace/place
