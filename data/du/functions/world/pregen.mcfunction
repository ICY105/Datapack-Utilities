
execute unless score @s pregen_radius matches 1.. run scoreboard players enable @s pregen_radius
execute unless score @s pregen_radius matches 1.. run tellraw @p [{"text":"\nClick here to set the pregen radius (in blocks), then stand where the center of the region should be. Run the function again to start the process.","color":"dark_green","clickEvent":{"action":"suggest_command","value":"/trigger pregen_radius set "}}]

execute if score @s pregen_radius matches 1.. if data storage du:temp pregen run tellraw @p [{"text":"A pregen task is already running.","color":"red"}]
execute if score @s pregen_radius matches 1.. unless data storage du:temp pregen run function du:world/pregen/setup
