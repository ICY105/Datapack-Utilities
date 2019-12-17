
# $world.in_0 du_data [0,255]: minimum y value to generate at
# $world.in_1 du_data [0,255]: maximum y value to generate at
# $world.in_2 du_data [0,32]: minimum number of veins to generate
# $world.in_3 du_data [0,32]: maximum number of veins to generate
# $world.in_4 du_data [0,16]: minimum number of ores per vein
# $world.in_5 du_data [0,16]: maximum number of ores per vein
# $world.in_6 du_data [-1,1]: dimension ID
#
# Optional: add this line to adjust biome whitelist/blacklist
# data merge storage du:temp {object:{biomes:[#,#,#,...],isBlacklist:0b}}
#
# $world.out_0 du_data: Returns -1 if registering ore failed. Otherwise, returns generated ore reg ID num.
# Keep track of this number in a scoreboard value. The function tag `#du:ore_gen/<dimension>` will have `$world.in_0 du_data` set to the ore's reg ID.
# If this if matches the same score, generate your ore.

scoreboard players set $world.out_0 du_data 0

#checks Y values
execute unless score $world.in_0 du_data matches 0..255 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_1 du_data matches 0..255 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_0 du_data <= $world.in_0 du_data run scoreboard players set $world.out_0 du_data -1

#checks veins to generate
execute unless score $world.in_2 du_data matches 0..32 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_3 du_data matches 0..32 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_2 du_data <= $world.in_3 du_data run scoreboard players set $world.out_0 du_data -1

#checks vein size
execute unless score $world.in_4 du_data matches 0..16 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_5 du_data matches 0..16 run scoreboard players set $world.out_0 du_data -1
execute unless score $world.in_4 du_data <= $world.in_5 du_data run scoreboard players set $world.out_0 du_data -1

#checks dim ID
execute unless score $world.in_6 du_data matches -1..1 run scoreboard players set $world.out_0 du_data -1

#run register function
execute if score $world.out_0 du_data matches 0 if score $world.in_6 du_data matches 0 in minecraft:overworld run function du:world/registry/register_ore_overworld
execute if score $world.out_0 du_data matches 0 if score $world.in_6 du_data matches -1 in minecraft:overworld run function du:world/registry/register_ore_nether
execute if score $world.out_0 du_data matches 0 if score $world.in_6 du_data matches 1 in minecraft:overworld run function du:world/registry/register_ore_end

#reset temp
data merge storage du:temp {var:{}}