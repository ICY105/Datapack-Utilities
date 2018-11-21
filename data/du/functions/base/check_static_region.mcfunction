#check if area is loaded
execute store success score temp_0 du_data if blocks -30000000 0 1600 -30000000 0 1600 -30000000 0 1600 all

#prompt player to load area if not
execute if score temp_0 du_data matches 0 run tellraw @a {"text":"Click here to complete datapack setup.","color":"dark_green","clickEvent":{"action":"run_command","value":"/forceload add -30000000 1600"}}
execute if score temp_0 du_data matches 0 run schedule function du:base/check_static_region 5s

#Create static region
execute if score temp_0 du_data matches 1 run function du:base/init_static_region