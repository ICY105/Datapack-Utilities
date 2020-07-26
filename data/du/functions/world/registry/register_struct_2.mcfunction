
#check dimension
execute unless data storage du:temp object.dimension run data modify storage du:temp object merge value {dimension:"minecraft:overworld"}
data modify storage du:temp var set from storage du:temp object.dimension

execute store result score $world.temp_0 du_data run data get storage du:struct_reg structures
execute if score $world.temp_0 du_data matches 1.. run function du:world/registry/register_struct_cycle
execute if score $world.temp_0 du_data matches 0 run data modify storage du:struct_reg structures prepend value {dimension:"",tiny:[],small:[],medium:[],large:[]}
execute if score $world.temp_0 du_data matches 0 run data modify storage du:struct_reg structures[0].dimension set from storage du:temp object.dimension

#add new entry
execute if score $world.in_0 du_data matches 0 run data modify storage du:struct_reg structures[0].tiny prepend value {id:-1,weight:0,placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 1 run data modify storage du:struct_reg structures[0].small prepend value {id:-1,weight:0,placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 2 run data modify storage du:struct_reg structures[0].medium prepend value {id:-1,weight:0,placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 3 run data modify storage du:struct_reg structures[0].large prepend value {id:-1,weight:0,placement:0,isBlacklist:-1b}

#set id
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg structures[0].tiny[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg structures[0].small[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg structures[0].medium[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg structures[0].large[0].id int 1 run scoreboard players get $world.reg_id du_data

scoreboard players operation $world.out_0 du_data = $world.reg_id du_data
scoreboard players add $world.reg_id du_data 1

#weight
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg structures[0].tiny[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg structures[0].small[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg structures[0].medium[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg structures[0].large[0].weight int 1 run scoreboard players get $world.in_1 du_data

#ignore placement
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg structures[0].tiny[0].placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg structures[0].small[0].placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg structures[0].medium[0].placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg structures[0].large[0].placement int 1 run scoreboard players get $world.in_2 du_data

#copy biome list
execute if score $world.in_0 du_data matches 0 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].tiny[0] merge from storage du:temp object.biomes
execute if score $world.in_0 du_data matches 1 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].small[0] merge from storage du:temp object.biomes
execute if score $world.in_0 du_data matches 2 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].medium[0] merge from storage du:temp object.biomes
execute if score $world.in_0 du_data matches 3 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].large[0] merge from storage du:temp object.biomes

execute if score $world.in_0 du_data matches 0 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].tiny[0].isBlacklist set from storage du:temp object.isBlacklist
execute if score $world.in_0 du_data matches 1 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].small[0].isBlacklist set from storage du:temp object.isBlacklist
execute if score $world.in_0 du_data matches 2 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].medium[0].isBlacklist set from storage du:temp object.isBlacklist
execute if score $world.in_0 du_data matches 3 if data storage du:temp object.biomes run data modify storage du:struct_reg structures[0].large[0].isBlacklist set from storage du:temp object.isBlacklist
