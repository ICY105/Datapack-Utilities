
execute if score $world.dim du_data matches 1 run function #du:ore_gen/the_end
execute if score $world.dim du_data matches 0 run function #du:ore_gen/overworld
execute if score $world.dim du_data matches -1 run function #du:ore_gen/the_nether
