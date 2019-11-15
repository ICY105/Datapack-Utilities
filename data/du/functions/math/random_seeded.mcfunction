
## in_0: max output value (0-100,000,000)
## in_1: input seed
#> out_0: generated random number
#> out_1: new seed
#> $math.temp_0: maths

scoreboard players operation out_1 du_data = in_1 du_data

#multiply
scoreboard players set $math.temp_0 du_data 1140671485
scoreboard players operation out_1 du_data *= $math.temp_0 du_data

#add
scoreboard players add out_1 du_data 12820163

#mod
scoreboard players set $math.temp_0 du_data 16777216
scoreboard players operation out_1 du_data %= $math.temp_0 du_data

#output
scoreboard players operation out_0 du_data = out_1 du_data
scoreboard players operation out_0 du_data %= in_0 du_data
scoreboard players set $math.temp_0 du_data -1
execute if score out_0 du_data matches ..-1 run scoreboard players operation out_0 du_data *= $math.temp_0 du_data

execute if score in_0 du_data matches 0 run scoreboard players set out_0 du_data 0
