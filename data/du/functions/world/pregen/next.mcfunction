
#load scores
execute store result score $world.in_0 du_data run data get storage du:temp pregen.radius
execute store result score $world.in_1 du_data run data get storage du:temp pregen.diameter
execute store result score $world.in_2 du_data run data get storage du:temp pregen.x
execute store result score $world.in_3 du_data run data get storage du:temp pregen.z
execute store result score $world.temp_0 du_data run data get storage du:temp pregen.step_x
execute store result score $world.temp_1 du_data run data get storage du:temp pregen.step_z

#calculate next position
scoreboard players add $world.temp_0 du_data 64
execute if score $world.temp_0 du_data > $world.in_1 du_data run scoreboard players add $world.temp_1 du_data 64
execute if score $world.temp_0 du_data > $world.in_1 du_data run scoreboard players set $world.temp_0 du_data 0

#save
execute store result storage du:temp pregen.step_x int 1 run scoreboard players get $world.temp_0 du_data
execute store result storage du:temp pregen.step_z int 1 run scoreboard players get $world.temp_1 du_data

#completion
scoreboard players operation $world.temp_2 du_data = $world.in_1 du_data
scoreboard players operation $world.temp_2 du_data *= $world.in_1 du_data
scoreboard players operation $world.temp_2 du_data /= $cons.256 du_data
scoreboard players operation $world.temp_3 du_data = $world.in_1 du_data
scoreboard players operation $world.temp_3 du_data /= $cons.16 du_data
scoreboard players operation $world.temp_2 du_data += $world.temp_3 du_data

scoreboard players operation $world.temp_3 du_data = $world.temp_0 du_data
scoreboard players operation $world.temp_3 du_data /= $cons.16 du_data
scoreboard players operation $world.temp_3 du_data *= $cons.4 du_data

scoreboard players operation $world.temp_4 du_data = $world.temp_1 du_data
scoreboard players operation $world.temp_4 du_data *= $world.in_1 du_data
scoreboard players operation $world.temp_4 du_data /= $cons.256 du_data
scoreboard players operation $world.temp_3 du_data += $world.temp_4 du_data

tellraw @a[tag=du_pregen] [{"text":"Completion: ","color":"dark_green"},{"score":{"name":"$world.temp_3","objective":"du_data"}},{"text":"/"},{"score":{"name":"$world.temp_2","objective":"du_data"}}]

#end check
execute if score $world.temp_1 du_data > $world.in_1 du_data run tellraw @a [{"text":"Pre-generation is complete.","color":"dark_green"}]
execute if score $world.temp_1 du_data > $world.in_1 du_data run tag @a remove du_pregen
execute if score $world.temp_1 du_data > $world.in_1 du_data run data remove storage du:temp pregen

#teleport player
summon area_effect_cloud -30000000 0 1600 {Duration:1,Tags:["du_teleport"]}
execute if score $world.temp_1 du_data <= $world.in_1 du_data as @e[tag=du_teleport] run function du:world/pregen/teleport

