
#add new entry
execute if score $world.in_0 du_data matches 0 run data modify storage du:struct_reg overworld.tiny prepend value {id:-1,size:-1,weight:0,ignore_placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 1 run data modify storage du:struct_reg overworld.small prepend value {id:-1,size:-1,weight:0,ignore_placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 2 run data modify storage du:struct_reg overworld.medium prepend value {id:-1,size:-1,weight:0,ignore_placement:0,isBlacklist:-1b}
execute if score $world.in_0 du_data matches 3 run data modify storage du:struct_reg overworld.large prepend value {id:-1,size:-1,weight:0,ignore_placement:0,isBlacklist:-1b}

#set id
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg overworld.tiny[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg overworld.small[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg overworld.medium[0].id int 1 run scoreboard players get $world.reg_id du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg overworld.large[0].id int 1 run scoreboard players get $world.reg_id du_data

scoreboard players operation $world.out_0 du_data = $world.reg_id du_data
scoreboard players add $world.reg_id du_data 1

#weight
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg overworld.tiny[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg overworld.small[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg overworld.medium[0].weight int 1 run scoreboard players get $world.in_1 du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg overworld.large[0].weight int 1 run scoreboard players get $world.in_1 du_data

#ignore placement
execute if score $world.in_0 du_data matches 0 store result storage du:struct_reg overworld.tiny[0].ignore_placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 1 store result storage du:struct_reg overworld.small[0].ignore_placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 2 store result storage du:struct_reg overworld.medium[0].ignore_placement int 1 run scoreboard players get $world.in_2 du_data
execute if score $world.in_0 du_data matches 3 store result storage du:struct_reg overworld.large[0].ignore_placement int 1 run scoreboard players get $world.in_2 du_data

#copy biome list
execute if score $world.in_0 du_data matches 0 if data storage du:temp var.biomes run data modify storage du:struct_reg overworld.tiny[0] merge from storage du:temp object
execute if score $world.in_0 du_data matches 1 if data storage du:temp var.biomes run data modify storage du:struct_reg overworld.small[0] merge from storage du:temp object
execute if score $world.in_0 du_data matches 2 if data storage du:temp var.biomes run data modify storage du:struct_reg overworld.medium[0] merge from storage du:temp object
execute if score $world.in_0 du_data matches 3 if data storage du:temp var.biomes run data modify storage du:struct_reg overworld.large[0] merge from storage du:temp object
