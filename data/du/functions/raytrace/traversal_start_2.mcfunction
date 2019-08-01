particle smoke

execute store result score in_0 du_data run data get entity @s Pos[0] 100
execute store result score in_1 du_data run data get entity @s Pos[1] 100
execute store result score in_2 du_data run data get entity @s Pos[2] 100

tp @s ^ ^ ^1
execute store result score in_3 du_data run data get entity @s Pos[0] 100
execute store result score in_4 du_data run data get entity @s Pos[1] 100
execute store result score in_5 du_data run data get entity @s Pos[2] 100
tp @s ~ ~ ~

scoreboard players set temp_7 du_data 10000
scoreboard players set temp_8 du_data 100
scoreboard players set temp_9 du_data -1

scoreboard players operation in_3 du_data -= in_0 du_data
scoreboard players operation in_4 du_data -= in_1 du_data
scoreboard players operation in_5 du_data -= in_2 du_data

scoreboard players set in_6 du_data 3
function du:raytrace/traversal_loop

kill @s