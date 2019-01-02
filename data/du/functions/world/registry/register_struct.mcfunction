
# in_0 du_data [0,2]: Size of structure. 0 = small (less than 16x16), 1 = medium (less than 32x32), 2 = large (any other size). This setting also affects rarity.
# in_1 du_data [1,1000]: Generation weight. When total weight < 1000 for all possible structures, this is the percent chance it will generate. Otherwise it is weight/total weight (Gen chance will always be =< specified weight).
# in_2 du_data [0,1]: Ignore placement restrictions. Useful if you want to generate somewhere other than the surface (ie. ocean, under ground, sky, etc.)
# in_3 du_data [-1,1]: dimension ID
#
# out_0 du_data: Returns -1 if registering ore failed. Otherwise, returns generated structure registry ID number.
# Keep track of this number in a scoreboard value. The function tag `#du:world/gen_struct_<dimension>` will have `in_0 du_data` set to the structure's registry ID.
# If this if matches the same score, generate your structure.
#
# Immediately after calling this function, you can run this command to configure biome options:
# data modify block -29999999 0 1600 RecordItem.tag.du.struct_reg_<dimension>[0] merge value {biomes:[#,#,#,...],isBlacklist:0b}
# This currently supports listing up to 24 biome IDs.
#
scoreboard players set out_0 du_data 0

#checks Size
execute unless score in_0 du_data matches 0..2 run scoreboard players set out_0 du_data -1

#checks Weight
execute unless score in_1 du_data matches 1..1000 run scoreboard players set out_0 du_data -1

#checks Ignore Placement Conditions
execute unless score in_2 du_data matches 0..1 run scoreboard players set out_0 du_data -1

#checks dim ID
execute unless score in_3 du_data matches -1..1 run scoreboard players set out_0 du_data -1

execute if score out_0 du_data matches 0 if score in_3 du_data matches 0 run function du:world/registry/register_struct_overworld
execute if score out_0 du_data matches 0 if score in_3 du_data matches -1 run function du:world/registry/register_struct_nether
execute if score out_0 du_data matches 0 if score in_3 du_data matches 1 run function du:world/registry/register_struct_end
