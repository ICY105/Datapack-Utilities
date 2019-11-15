
execute if score $du.dim du_data matches 1 run function #du:world/ore_gen_end
execute if score $du.dim du_data matches 0 run function #du:world/ore_gen_overworld
execute if score $du.dim du_data matches -1 run function #du:world/ore_gen_nether
