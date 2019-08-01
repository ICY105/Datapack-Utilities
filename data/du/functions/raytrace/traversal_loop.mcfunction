
### find distance to next edge

#round to edge
scoreboard players operation temp_0 du_data = in_0 du_data
scoreboard players operation temp_0 du_data /= temp_8 du_data
scoreboard players operation temp_0 du_data *= temp_8 du_data

scoreboard players operation temp_1 du_data = in_1 du_data
scoreboard players operation temp_1 du_data /= temp_8 du_data
scoreboard players operation temp_1 du_data *= temp_8 du_data

scoreboard players operation temp_2 du_data = in_2 du_data
scoreboard players operation temp_2 du_data /= temp_8 du_data
scoreboard players operation temp_2 du_data *= temp_8 du_data

#shift target edge in direction traveling
execute if score in_3 du_data matches 1.. run scoreboard players add temp_0 du_data 100
execute if score in_4 du_data matches 1.. run scoreboard players add temp_1 du_data 100
execute if score in_5 du_data matches 1.. run scoreboard players add temp_2 du_data 100

#find distance
scoreboard players operation temp_0 du_data -= in_0 du_data
scoreboard players operation temp_1 du_data -= in_1 du_data
scoreboard players operation temp_2 du_data -= in_2 du_data

### Determine closest edge

#find ratios
scoreboard players operation temp_0 du_data *= temp_7 du_data
scoreboard players operation temp_1 du_data *= temp_7 du_data
scoreboard players operation temp_2 du_data *= temp_7 du_data

scoreboard players operation temp_0 du_data /= in_3 du_data
scoreboard players operation temp_1 du_data /= in_4 du_data
scoreboard players operation temp_2 du_data /= in_5 du_data

execute unless score temp_0 du_data matches ..-1 run scoreboard players operation temp_0 du_data *= temp_9 du_data 
execute unless score temp_1 du_data matches ..-1 run scoreboard players operation temp_1 du_data *= temp_9 du_data
execute unless score temp_2 du_data matches ..-1 run scoreboard players operation temp_2 du_data *= temp_9 du_data

#determine smallest ratios
execute if score in_3 du_data matches 0 run scoreboard players set temp_0 du_data 10000000
execute if score in_4 du_data matches 0 run scoreboard players set temp_1 du_data 10000000
execute if score in_5 du_data matches 0 run scoreboard players set temp_2 du_data 10000000

scoreboard players operation temp_6 du_data = temp_0 du_data
execute if score temp_1 du_data < temp_0 du_data if score temp_1 du_data < temp_2 du_data run scoreboard players operation temp_6 du_data = temp_1 du_data
execute if score temp_2 du_data < temp_0 du_data if score temp_2 du_data < temp_1 du_data run scoreboard players operation temp_6 du_data = temp_2 du_data

#multiply increment by ratios
scoreboard players operation temp_3 du_data = in_3 du_data
scoreboard players operation temp_4 du_data = in_4 du_data
scoreboard players operation temp_5 du_data = in_5 du_data

scoreboard players operation temp_3 du_data *= temp_6 du_data
scoreboard players operation temp_4 du_data *= temp_6 du_data
scoreboard players operation temp_5 du_data *= temp_6 du_data

scoreboard players operation temp_3 du_data /= temp_7 du_data
scoreboard players operation temp_4 du_data /= temp_7 du_data
scoreboard players operation temp_5 du_data /= temp_7 du_data

### Store and Repeat
scoreboard players operation in_0 du_data += temp_3 du_data
scoreboard players operation in_1 du_data += temp_4 du_data
scoreboard players operation in_2 du_data += temp_5 du_data

execute store result entity @s Pos[0] double 0.01 run scoreboard players get in_0 du_data
execute store result entity @s Pos[1] double 0.01 run scoreboard players get in_1 du_data
execute store result entity @s Pos[2] double 0.01 run scoreboard players get in_2 du_data

#tellraw @p ["",{"score":{"name":"in_0","objective":"du_data"},"color":"dark_green"}]
#tellraw @p ["",{"score":{"name":"in_1","objective":"du_data"},"color":"dark_green"}]
#tellraw @p ["",{"score":{"name":"in_2","objective":"du_data"},"color":"dark_green"}]

execute at @s run particle flame
execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ glass

scoreboard players remove in_6 du_data 1
execute if score in_6 du_data matches 1.. run function du:raytrace/traversal_loop