
# in_0 du_data [0,255]: minimum y value to generate at
# in_1 du_data [0,255]: maximum y value to generate at
# in_2 du_data [1,32]: minimum number of veins to generate
# in_3 du_data [1,32]: maximum number of veins to generate
# in_4 du_data [1,16]: minimum number of ores per vein
# in_5 du_data [1,16]: maximum number of ores per vein
# in_6 du_data [-1,1]: dimension ID
#
# out_0 du_data: Returns -1 if registering ore failed. Otherwise, returns generated ore reg ID num.
# Keep track of this number in a scoreboard value. The function tag `#du:world/gen_ore_<dimension>` will have `in_0 du_data` set to the ore's reg ID.
# If this if matches the same score, generate your ore.
#
# Immediately after calling this function, you can run this command to configure biome options:
# data modify block -29999999 0 1600 RecordItem.tag.du.ore_reg_<dimension>[0] merge value {biomes:[#,#,#,...],isBlacklist:0b}
# This currently supports listing up to 24 biome IDs.
#
scoreboard players set out_0 du_data 0

#checks Y values
execute unless score in_0 du_data matches 0..255 run scoreboard players set out_0 du_data -1
execute unless score in_1 du_data matches 0..255 run scoreboard players set out_0 du_data -1
execute unless score in_0 du_data <= in_0 du_data run scoreboard players set out_0 du_data -1

#checks veins to generate
execute unless score in_2 du_data matches 1..32 run scoreboard players set out_0 du_data -1
execute unless score in_3 du_data matches 1..32 run scoreboard players set out_0 du_data -1
execute unless score in_2 du_data <= in_3 du_data run scoreboard players set out_0 du_data -1

#checks vein size
execute unless score in_4 du_data matches 1..16 run scoreboard players set out_0 du_data -1
execute unless score in_5 du_data matches 1..16 run scoreboard players set out_0 du_data -1
execute unless score in_4 du_data <= in_5 du_data run scoreboard players set out_0 du_data -1

#checks dim ID
execute unless score in_6 du_data matches -1..1 run scoreboard players set out_0 du_data -1

execute if score out_0 du_data matches 0 if score in_6 du_data matches 0 in minecraft:overworld run function du:world/registry/register_ore_overworld
execute if score out_0 du_data matches 0 if score in_6 du_data matches -1 in minecraft:overworld run function du:world/registry/register_ore_nether
execute if score out_0 du_data matches 0 if score in_6 du_data matches 1 in minecraft:overworld run function du:world/registry/register_ore_end
