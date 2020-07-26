
#test for dimension ID
data modify storage du:temp var set from storage du:temp object.dimension
execute store success score $world.temp_1 du_data run data modify storage du:temp var set from storage du:ore_reg ores[0].dimension

#loop until ID is found
execute if score $world.temp_1 du_data matches 1 run data modify storage du:ore_reg ores append from storage du:ore_reg ores[0]
execute if score $world.temp_1 du_data matches 1 run data remove storage du:ore_reg ores[0]

execute if score $world.temp_1 du_data matches 1 run scoreboard players remove $world.temp_0 du_data 1
execute if score $world.temp_0 du_data matches 1.. if score $world.temp_1 du_data matches 1 run function du:world/registry/register_ore_cycle
