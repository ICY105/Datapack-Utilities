
## $math.in_0: number to shift
#> $math.in_1: input to bit_shift
#> $math.out_0: shifted number

#> $math.temp_0: quick maths
#> $math.temp_3: in_0 holder
#> $math.temp_4: in_1 holder

#assign placeholder
scoreboard players operation $math.temp_3 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_4 du_data = $math.in_1 du_data

# $math.in_0 << 13
scoreboard players set $math.temp_0 du_data 8192
scoreboard players operation $math.in_1 du_data = $math.in_0 du_data
scoreboard players operation $math.in_1 du_data *= $math.temp_0 du_data
function du:math/xor_bitwise
scoreboard players operation $math.in_0 du_data = $math.out_0 du_data

# $math.in_0 >> 17
scoreboard players set $math.temp_0 du_data 131072
scoreboard players operation $math.in_1 du_data = $math.in_0 du_data
scoreboard players operation $math.in_1 du_data /= $math.temp_0 du_data
function du:math/xor_bitwise
scoreboard players operation $math.in_0 du_data = $math.out_0 du_data

# $math.in_0 << 5
scoreboard players set $math.temp_0 du_data 32
scoreboard players operation $math.in_1 du_data = $math.in_0 du_data
scoreboard players operation $math.in_1 du_data *= $math.temp_0 du_data
function du:math/xor_bitwise

#return $math.out_0

#reset $math.in_0 & $math.in_1
scoreboard players operation $math.in_0 du_data = $math.temp_3 du_data
scoreboard players operation $math.in_1 du_data = $math.temp_4 du_data
