
data modify block ~ ~ ~ Items[0].tag.du_dur.init set value 1b
data modify block ~ ~ ~ Items[0].tag.du_dur.dur set from block ~ ~ ~ Items[0].tag.du_dur.max_dur
data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 0
data modify block ~ ~ ~ Items[0].tag.du_dur.damage set value 0

data merge block -29999999 0 1602 {Text1:"[{\"text\":\"Durability: \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[0].tag.du_dur.dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false},{\"text\":\"/\",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[0].tag.du_dur.max_dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false}]"}
execute unless data block ~ ~ ~ Items[0].tag.display.Lore run data modify block ~ ~ ~ Items[0].tag.display.Lore set value []
data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -29999999 0 1602 Text1

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_sword"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 32
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_pickaxe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 32
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_axe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 32
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_shovel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 32
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_hoe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 32

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_sword"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 59
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_pickaxe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 59
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_axe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 59
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_shovel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 59
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_hoe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 59

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone_sword"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 131
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone_pickaxe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 131
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone_axe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 131
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone_shovel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 131
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone_hoe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 131

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_sword"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_pickaxe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_axe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_shovel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_hoe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_sword"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_axe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_shovel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_hoe"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561



execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:leather_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 55
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:leather_chestplate"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 80
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:leather_leggings"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 75
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:leather_boots"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 65

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 77
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_chestplate"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 112
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_leggings"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 105
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:golden_boots"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 91

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:chainmail_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 165
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:chainmail_chestplate"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 240
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:chainmail_leggings"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 225
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:chainmail_boots"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 195

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 165
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_chestplate"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 240
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_leggings"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 225
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:iron_boots"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 195

execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 363
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_chestplate"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 528
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_leggings"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 495
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_boots"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 429



execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:fishing_rod"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 64
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:flint_and_steel"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 64
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 25
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:shears"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 238
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:shield"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 336
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:bow"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 384
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:trident"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 250
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:elytra"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 1561
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 326
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,id:"minecraft:turtle_helmet"}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 275
execute if block ~ ~ ~ shulker_box{Items:[{Slot:0b,tag:{Unbreakable:1b}}]} run data modify block ~ ~ ~ Items[0].tag.du_dur.item_dur set value 0