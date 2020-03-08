
## $math.in_0: max output value (0-100,000,000)
#> $math.out_0: generated random number

execute if score $world.rng_seed du_data matches -2147483648 run function du:world/get_seed

#LCG
scoreboard players operation $world.rng_seed du_data *= $cons.rng_a du_data
scoreboard players add $world.rng_seed du_data 12345

#output
scoreboard players operation $math.out_0 du_data = $world.rng_seed du_data
scoreboard players operation $math.out_0 du_data /= $cons.16 du_data
scoreboard players operation $math.out_0 du_data %= $math.in_0 du_data
execute if score $math.out_0 du_data matches ..-1 run scoreboard players operation $math.out_0 du_data *= $cons.-1 du_data

#check for 0 range
execute if score $math.in_0 du_data matches 0 run scoreboard players set $math.out_0 du_data 0
