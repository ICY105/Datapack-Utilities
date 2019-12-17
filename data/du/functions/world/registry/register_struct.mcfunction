# All of these scoreboard values need to be set:
# $world.in_0 du_data [0,3]: Size of structure. 0 = tiny (definitely less than 8x8, 4x4 prefered), 1 = small (less than 16x15), 2 = medium (less than 48x48), 3 = large (more than 48x48). This setting guarantees larger structures are more spread out.
# $world.in_1 du_data [1,1000]: Generation weight. When total weight < 1000 for all possible structures, this is the percent chance it will generate. Otherwise it is weight/total weight (Gen chance will always be <= specified weight).
#                               Recommend to have the total combined weight of all your structures for a size category equal 1000 (or less if you want them to be rarer).
# $world.in_2 du_data [0,1]: 1 = Ignore placement restrictions (prevents generation on water, sky, void, side of cliffs, etc). Useful if you want to generate somewhere other than the surface (ie. ocean, under ground, sky, etc.)
# $world.in_3 du_data [-1,1]: dimension ID
#
# Optional: add this line to adjust biome whitelist/blacklist
# data merge storage du:temp {object:{biomes:[#,#,#,...],isBlacklist:0b}}
#
# $world.out_0 du_data: Returns -1 if registering ore failed. Otherwise, returns generated structure registry ID.
# Keep track of this number in a scoreboard value. The function tag `#du:struct_gen/<dimension>` will have `$world.in_0 du_data` set to the structure's registry ID.
# If this if matches the same score, generate your structure.

scoreboard players set $world.out_0 du_data 0

#checks Size
execute unless score $world.in_0 du_data matches 0..3 run scoreboard players set $world.out_0 du_data -1

#checks Weight
execute unless score $world.in_1 du_data matches 1..1000 run scoreboard players set $world.out_0 du_data -1

#checks Ignore Placement Conditions
execute unless score $world.in_2 du_data matches 0..1 run scoreboard players set $world.out_0 du_data -1

#checks dim ID
execute unless score $world.in_3 du_data matches -1..1 run scoreboard players set $world.out_0 du_data -1

#run register function
execute if score $world.out_0 du_data matches 0 if score $world.in_3 du_data matches 0 in minecraft:overworld run function du:world/registry/register_struct_overworld
execute if score $world.out_0 du_data matches 0 if score $world.in_3 du_data matches -1 in minecraft:overworld run function du:world/registry/register_struct_nether
execute if score $world.out_0 du_data matches 0 if score $world.in_3 du_data matches 1 in minecraft:overworld run function du:world/registry/register_struct_end

#reset temp
data merge storage du:temp {var:{}}
