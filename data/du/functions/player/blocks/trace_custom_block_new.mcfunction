execute unless block ~ ~ ~ #du:non-solid run function #du:place_custom_block
scoreboard players remove in_1 du_data 1
execute if score in_1 du_data matches 1.. positioned ^ ^ ^0.02 run function du:player/blocks/trace_custom_block