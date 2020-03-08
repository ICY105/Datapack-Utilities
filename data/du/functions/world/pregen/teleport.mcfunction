
scoreboard players operation $world.temp_0 du_data -= $world.in_0 du_data
scoreboard players operation $world.temp_1 du_data -= $world.in_0 du_data
scoreboard players operation $world.temp_0 du_data += $world.in_2 du_data
scoreboard players operation $world.temp_1 du_data += $world.in_3 du_data

execute store result entity @s Pos[0] double 1 run scoreboard players get $world.temp_0 du_data
execute store result entity @s Pos[2] double 1 run scoreboard players get $world.temp_1 du_data

execute at @s run tp @s ~ ~ ~
execute at @s run tp @a[tag=du_pregen] ~ ~ ~

kill @s
