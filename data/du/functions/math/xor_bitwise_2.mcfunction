
## $math.in_0: number 1 to compare
## $math.in_1: number 2 to compare
#> $math.out_0: shifted number

## $math.temp_0: 2 constant
#> $math.temp_1: multiplier
#> $math.temp_2: in_0 copy
#> $math.temp_3: in_1 copy
#> $math.temp_4: in_0 operator
#> $math.temp_5: in_1 operator

scoreboard players operation $math.temp_4 du_data = $math.temp_2 du_data
scoreboard players operation $math.temp_5 du_data = $math.temp_3 du_data
scoreboard players operation $math.temp_4 du_data %= $math.temp_0 du_data
scoreboard players operation $math.temp_5 du_data %= $math.temp_0 du_data

execute unless score $math.temp_4 du_data = $math.temp_5 du_data run scoreboard players operation $math.out_0 du_data += $math.temp_1 du_data

scoreboard players operation $math.temp_1 du_data *= $math.temp_0 du_data
scoreboard players operation $math.temp_2 du_data /= $math.temp_0 du_data
scoreboard players operation $math.temp_3 du_data /= $math.temp_0 du_data

execute if score $math.temp_1 du_data matches 1.. run function du:math/xor_bitwise_2
