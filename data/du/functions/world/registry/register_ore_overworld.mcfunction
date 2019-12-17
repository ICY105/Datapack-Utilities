
data modify storage du:ore_reg overworld prepend value {id:-1,y_min:-1,y_max:-1,veins_min:-1,veins_max:-1,vein_size_min:-1,vein_size_max:-1,isBlacklist:-1b}

#id
execute store result storage du:ore_reg overworld[0].id int 1 run scoreboard players get $world.reg_id du_data
scoreboard players operation $world.out_0 du_data = $world.reg_id du_data
scoreboard players add $world.reg_id du_data 1

#y values
execute store result storage du:ore_reg overworld[0].y_min int 1 run scoreboard players get $world.in_0 du_data
execute store result storage du:ore_reg overworld[0].y_max int 1 run scoreboard players get $world.in_1 du_data

#veins
execute store result storage du:ore_reg overworld[0].veins_min int 1 run scoreboard players get $world.in_2 du_data
execute store result storage du:ore_reg overworld[0].veins_max int 1 run scoreboard players get $world.in_3 du_data

#vein size
execute store result storage du:ore_reg overworld[0].vein_size_min int 1 run scoreboard players get $world.in_4 du_data
execute store result storage du:ore_reg overworld[0].vein_size_max int 1 run scoreboard players get $world.in_5 du_data

#copy biome list
execute if data storage du:temp var.biomes run data modify storage du:struct_reg overworld[0] merge from storage du:temp object
