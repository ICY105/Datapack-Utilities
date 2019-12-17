
## $math.in_0: max output value (0-100,000,000)
## $math.in_1: input seed
#> $math.out_0: generated random number
#> $math.out_1: new seed
#> $math.temp_0: maths

scoreboard players operation $math.out_1 du_data = $math.in_1 du_data

#multiply
scoreboard players set $math.temp_0 du_data 1140671485
scoreboard players operation $math.out_1 du_data *= $math.temp_0 du_data

#add
scoreboard players add $math.out_1 du_data 12820163

#mod
scoreboard players set $math.temp_0 du_data 16777216
scoreboard players operation $math.out_1 du_data %= $math.temp_0 du_data

#output
scoreboard players operation $math.out_0 du_data = $math.out_1 du_data
scoreboard players operation $math.out_0 du_data %= $math.in_0 du_data
scoreboard players set $math.temp_0 du_data -1
execute if score $math.out_0 du_data matches ..-1 run scoreboard players operation $math.out_0 du_data *= $math.temp_0 du_data

execute if score $math.in_0 du_data matches 0 run scoreboard players set $math.out_0 du_data 0
