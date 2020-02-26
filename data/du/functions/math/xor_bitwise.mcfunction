
## $math.in_0: number 1 to compare
## $math.in_1: number 2 to compare
#> $math.out_0: shifted number

#> $math.temp_0: 2 constant -> -1 constant
#> $math.temp_1: multiplier
#> $math.temp_2: in_0 copy
#> $math.temp_3: in_1 copy

scoreboard players set $math.temp_0 du_data 2
scoreboard players set $math.temp_1 du_data 1

scoreboard players operation $math.temp_2 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_3 du_data = $math.in_1 du_data

execute if score $math.in_0 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 1
execute if score $math.in_0 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 2147483647
execute if score $math.in_1 du_data matches ..-1 run scoreboard players add $math.temp_3 du_data 1
execute if score $math.in_1 du_data matches ..-1 run scoreboard players add $math.temp_3 du_data 2147483647

scoreboard players set $math.out_0 du_data 0

function du:math/xor_bitwise_2

#match sign to inputs
scoreboard players set $math.temp_0 du_data -1
execute if score $math.in_0 du_data matches ..-1 if score $math.in_1 du_data matches 0.. run scoreboard players operation $math.out_0 du_data *= $math.temp_0 du_data
execute if score $math.in_0 du_data matches 0.. if score $math.in_1 du_data matches ..-1 run scoreboard players operation $math.out_0 du_data *= $math.temp_0 du_data
