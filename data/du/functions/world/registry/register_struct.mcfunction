# All of these scoreboard values need to be set:
# $world.in_0 du_data [0,3]: Approximate size of structure. This settings attempts to prevent structures from overlapping. It also spreads out larger structures: larger = more rare
#                               0 = tiny (definitely less than 8x8, 4x4 preferred)
#                               1 = small (less than 16x16)
#                               2 = medium (less than 48x48)
#                               3 = large (more than 48x48).
# $world.in_1 du_data [1,1000]: Generation weight. When total weight < 1000 for all possible structures, this is the percent chance it will generate.
#                               Otherwise it is weight/total weight (Gen chance will always be <= specified weight).
#                               Recommend to have the total combined weight of all your structures for a size category equal 1000 (or less if you want them to be rarer).
#                               If multiple datapacks adding structures sum to 1000, then each datapack will have equal chances of generating one of their structures.
# $world.in_2 du_data [0,3]: Structure placement scheme. Structures in different placement schemes may generate closer together.
#                               0 = surface
#                               1 = surface-ignore placement restrictions
#                               2 = underground
#                               3 = sky
#
# Optional: add this line to adjust dimension and/or biome whitelist/blacklist
# Defaults to overworld and no biome restrictions
# data merge storage du:temp {object:{dimension:"minecraft:overworld",biomes:["biome_1","biome_2",...],isBlacklist:0b}}
#
# $world.out_0 du_data: Returns -1 if registering struct failed. Otherwise, returns generated structure registry ID.
# Keep track of this number in a fake player scoreboard value. The function tag `#du:world_gen/struct` will have `$world.in_0 du_data` set to the structure's registry ID.
# If this if matches the same score, generate your structure. (ie. execute if $world.in_0 du_data = <my_struct> <my_obj> run function <generate struct>)

scoreboard players set $world.out_0 du_data 0

#checks Size
execute unless score $world.in_0 du_data matches 0..3 run scoreboard players set $world.out_0 du_data -1

#checks Weight
execute unless score $world.in_1 du_data matches 1..1000 run scoreboard players set $world.out_0 du_data -1

#checks Ignore Placement Conditions
execute unless score $world.in_2 du_data matches 0..3 run scoreboard players set $world.out_0 du_data -1

#run register function
execute if score $world.out_0 du_data matches 0 run function du:world/registry/register_struct_2

#reset temp
data modify storage du:temp object set value {}
