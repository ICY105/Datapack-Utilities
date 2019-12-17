
execute store result score in_0 du_data run data get entity @s Item.tag.BlockEntityTag.SpawnData.ArmorItems[3].tag.du_block_id
execute unless score in_0 du_data matches 0 run kill @e[type=minecraft:experience_orb,distance=..2]
execute unless score in_0 du_data matches 0 run function #du:spawner_block
kill @s
