
#>temp_0: 48 const
#>temp_1: local displacement x
#>temp_2: local displacement y
#>in_2: chunk x pos
#>in_3: chunk z pos
#>in_4: chunk dimension
#>in_5: map seed

scoreboard players set temp_0 du_data 48

#get x cord
execute store result score in_2 du_data run data get entity @s Pos[0]
scoreboard players operation temp_1 du_data = in_2 du_data
scoreboard players operation temp_1 du_data %= temp_0 du_data
scoreboard players operation in_2 du_data -= temp_1 du_data
execute if score temp_1 du_data matches 32.. run scoreboard players add in_2 du_data 48

#get z cord
execute store result score in_3 du_data run data get entity @s Pos[2]
scoreboard players operation temp_2 du_data = in_3 du_data
scoreboard players operation temp_2 du_data %= temp_0 du_data
scoreboard players operation in_3 du_data -= temp_2 du_data
execute if score temp_2 du_data matches 32.. run scoreboard players add in_3 du_data 48

#get dimension
execute store result score in_4 du_data run data get entity @s Dimension

#get seed
execute store result score in_5 du_data run seed

#alter position
execute align xz positioned ~0.5 0.5 ~0.5 run function du:world/generation/position_x
