
#check dimension
execute unless data storage du:temp object.dimension run data modify storage du:temp object merge value {dimension:"minecraft:overworld"}
data modify storage du:temp var set from storage du:temp object.dimension

execute store result score $world.temp_0 du_data run data get storage du:ore_reg ores
execute if score $world.temp_0 du_data matches 1.. run function du:world/registry/register_ore_cycle
execute if score $world.temp_0 du_data matches 0 run data modify storage du:ore_reg ores prepend value {dimension:"",list:[]}
execute if score $world.temp_0 du_data matches 0 run data modify storage du:ore_reg ores[0].dimension set from storage du:temp object.dimension

#add entry
data modify storage du:ore_reg ores[0].list prepend value {id:-1,y_min:-1,y_max:-1,veins_min:-1,veins_max:-1,vein_size_min:-1,vein_size_max:-1,ignorePlacement:0b,isBlacklist:-1b}

#copy biome list
execute if data storage du:temp object.biomes run data modify storage du:ore_reg ores[0].list[0].biomes set from storage du:temp object.biomes
execute if data storage du:temp object.biomes run data modify storage du:ore_reg ores[0].list[0].isBlacklist set from storage du:temp object.isBlacklist

#id
execute store result storage du:ore_reg ores[0].list[0].id int 1 run scoreboard players get $world.reg_id du_data
scoreboard players operation $world.out_0 du_data = $world.reg_id du_data
scoreboard players add $world.reg_id du_data 1

#y values
execute store result storage du:ore_reg ores[0].list[0].y_min int 1 run scoreboard players get $world.in_0 du_data
execute store result storage du:ore_reg ores[0].list[0].y_max int 1 run scoreboard players get $world.in_1 du_data

#veins
execute store result storage du:ore_reg ores[0].list[0].veins_min int 1 run scoreboard players get $world.in_2 du_data
execute store result storage du:ore_reg ores[0].list[0].veins_max int 1 run scoreboard players get $world.in_3 du_data

#vein size
execute store result storage du:ore_reg ores[0].list[0].vein_size_min int 1 run scoreboard players get $world.in_4 du_data
execute store result storage du:ore_reg ores[0].list[0].vein_size_max int 1 run scoreboard players get $world.in_5 du_data

#placement restriction
execute store result storage du:ore_reg ores[0].list[0].ignorePlacement int 1 run scoreboard players get $world.in_6 du_data

