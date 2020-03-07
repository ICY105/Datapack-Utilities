
## $math.in_0: max output value (0-100,000,000)
## $math.in_1: input seed
#> $math.out_0: generated random number
#> $math.out_1: new seed

scoreboard players operation $math.out_1 du_data = $math.in_1 du_data

#LCG
scoreboard players operation $math.out_1 du_data *= $cons.rng_a du_data
scoreboard players add $math.out_1 du_data 12345

#output
scoreboard players operation $math.out_0 du_data = $math.out_1 du_data
scoreboard players operation $math.out_0 du_data /= $cons.16 du_data
scoreboard players operation $math.out_0 du_data %= $math.in_0 du_data
execute if score $math.out_0 du_data matches ..-1 run scoreboard players operation $math.out_0 du_data *= $cons.-1 du_data

#check for 0 range
execute if score $math.in_0 du_data matches 0 run scoreboard players set $math.out_0 du_data 0
