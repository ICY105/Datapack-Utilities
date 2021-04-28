
data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:1b}]

execute if data storage du:temp obj{id:"minecraft:lava_bucket"} run data merge block ~ ~ ~ {BurnTime:20000s}
execute if data storage du:temp obj{id:"minecraft:lava_bucket"} run replaceitem block ~ ~ ~ container.1 bucket 2

execute if data storage du:temp obj{id:"minecraft:coal_block"} run data merge block ~ ~ ~ {BurnTime:16000s}
execute if data storage du:temp obj{id:"minecraft:dried_kelp_block"} run data merge block ~ ~ ~ {BurnTime:4000s}
execute if data storage du:temp obj{id:"minecraft:blaze_rod"} run data merge block ~ ~ ~ {BurnTime:2400s}
execute if data storage du:temp obj{id:"minecraft:coal"} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if data storage du:temp obj{id:"minecraft:charcoal"} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if data storage du:temp obj{id:"minecraft:stick"} run data merge block ~ ~ ~ {BurnTime:100s}
execute if data storage du:temp obj{id:"minecraft:bamboo"} run data merge block ~ ~ ~ {BurnTime:50s}

execute if data storage du:temp obj{id:"minecraft:oak_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:birch_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:spruce_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:jungle_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:acacia_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:dark_oak_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:crimson_stem"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:warped_stem"} run data merge block ~ ~ ~ {BurnTime:300s}

execute if data storage du:temp obj{id:"minecraft:oak_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:birch_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:spruce_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:jungle_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:acacia_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:dark_oak_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:crimson_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage du:temp obj{id:"minecraft:warped_planks"} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run function du:custom_furnace/fuel_2

execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} store result score $crafting.temp_1 du_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run scoreboard players remove $crafting.temp_1 du_data 1
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $crafting.temp_1 du_data
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} if block ~ ~ ~ #du:internal/furnace-like[lit=false] run function du:custom_furnace/make_lit
