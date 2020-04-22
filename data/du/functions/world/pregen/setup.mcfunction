
#setup storage
data merge storage du:temp {pregen:{radius:0,diameter:0,x:0,z:0,step_x:0,step_z:0}}

execute store result storage du:temp pregen.radius int 1 run scoreboard players get @s pregen_radius
scoreboard players operation @s pregen_radius += @s pregen_radius
execute store result storage du:temp pregen.diameter int 1 run scoreboard players get @s pregen_radius

execute store result storage du:temp pregen.x int 1 run data get entity @s Pos[0]
execute store result storage du:temp pregen.z int 1 run data get entity @s Pos[2]

#configure player
gamemode spectator @s
tag @s add du_pregen
tag @s remove chunk_scan.disabled
scoreboard players reset @s pregen_radius
tellraw @p [{"text":"Pre-generation has begun.\n","color":"dark_green"},{"text":"Do not move until the task is complete.","color":"gold"}]

#teleport to first location
execute store result score $world.in_0 du_data run data get storage du:temp pregen.radius
execute store result score $world.in_1 du_data run data get storage du:temp pregen.diameter
execute store result score $world.in_2 du_data run data get storage du:temp pregen.x
execute store result score $world.in_3 du_data run data get storage du:temp pregen.z
execute store result score $world.temp_0 du_data run data get storage du:temp pregen.step_x
execute store result score $world.temp_1 du_data run data get storage du:temp pregen.step_z
summon area_effect_cloud -30000000 0 1600 {Duration:1,Tags:["du_teleport"]}
execute as @e[tag=du_teleport] run function du:world/pregen/teleport
