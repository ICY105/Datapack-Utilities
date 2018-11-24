function du:world/get_biome_id
scoreboard players operation in_0 du_data = out_0 du_data
execute if entity @s[nbt={Dimension:-1}] run function #du:chunk_gen_nether
execute if entity @s[nbt={Dimension:0}] run function #du:chunk_gen
execute if entity @s[nbt={Dimension:1}] run function #du:chunk_gen_end

