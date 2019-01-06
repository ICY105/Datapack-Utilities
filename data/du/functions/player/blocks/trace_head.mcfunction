execute if block ~ ~ ~ minecraft:player_head run function #d:place_custom_head
scoreboard players remove in_1 du_data 1
execute unless block ~ ~ ~ minecraft:player_head positioned ^ ^ ^0.05 run function du:player/blocks/trace_head