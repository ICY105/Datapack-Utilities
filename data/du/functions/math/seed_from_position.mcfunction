
## $math.in_0: x pos
## $math.in_1: y pos
#> $math.out_0: generated random number

#> $math.temp_0: quick maths
#* $math.temp_0..7: xorshift
#> $math.temp_8: in_0 holder
#> $math.temp_9: in_1 holder
#> $math.temp_10: output holder

#assign placeholder
scoreboard players operation $math.temp_8 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_9 du_data = $math.in_1 du_data

scoreboard players set $math.temp_10 du_data 0

# shift $math.in_0
function du:math/xor_shift
scoreboard players operation $math.temp_10 du_data += $math.out_0 du_data

#shift $math.in_1
scoreboard players operation $math.in_0 du_data = $math.in_1 du_data
function du:math/xor_shift
scoreboard players operation $math.temp_10 du_data *= $math.out_0 du_data

#shift $math.temp_0
scoreboard players operation $math.in_0 du_data = $math.temp_10 du_data
function du:math/xor_shift
#return $math.out_0

#reset $math.in_0 & $math.in_1
scoreboard players operation $math.in_0 du_data = $math.temp_8 du_data
scoreboard players operation $math.in_1 du_data = $math.temp_9 du_data