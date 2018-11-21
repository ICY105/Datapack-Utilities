

execute if block ~ ~ ~ trapped_chest{Items:[{Slot: 3b, id: "minecraft:redstone"},{Slot: 11b, id:"minecraft:redstone"},{Slot: 12b, id:"minecraft:book"},{Slot: 13b, id:"minecraft:redstone"},{Slot: 21b, id:"minecraft:redstone"}]} run replaceitem block ~ ~ ~ container.16 cobblestone


execute if score in_0 du_data matches 0 if score in_2 du_data matches 0 if score in_6 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot: 3b, id: "minecraft:redstone"},{Slot: 11b, id:"minecraft:redstone"},{Slot: 12b, id:"minecraft:book"},{Slot: 13b, id:"minecraft:redstone"},{Slot: 21b, id:"minecraft:redstone"}]} run replaceitem block ~ ~ ~ container.16 stone
