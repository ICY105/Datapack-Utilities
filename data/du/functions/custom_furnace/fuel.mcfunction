execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:lava_bucket"}]} run data merge block ~ ~ ~ {BurnTime:20000s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:lava_bucket"}]} run replaceitem block ~ ~ ~ container.1 bucket 2

execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:coal_block"}]} run data merge block ~ ~ ~ {BurnTime:16000s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:dried_kelp_block"}]} run data merge block ~ ~ ~ {BurnTime:4000s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:blaze_rod"}]} run data merge block ~ ~ ~ {BurnTime:2400s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:coal"}]} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:charcoal"}]} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:stick"}]} run data merge block ~ ~ ~ {BurnTime:100s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:bamboo"}]} run data merge block ~ ~ ~ {BurnTime:50s}

execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:oak_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:birch_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:spruce_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:jungle_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:acacia_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:dark_oak_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:birch_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:spruce_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:jungle_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:acacia_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ #du:internal/furnace-like{Items:[{Slot:1b,id:"minecraft:dark_oak_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run function du:custom_furnace/fuel_2

execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} store result score $crafting.temp_1 du_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} run scoreboard players remove $crafting.temp_1 du_data 1
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $crafting.temp_1 du_data
execute unless block ~ ~ ~ #du:internal/furnace-like{BurnTime:0s} if block ~ ~ ~ #du:internal/furnace-like[lit=false] run function du:custom_furnace/make_lit
