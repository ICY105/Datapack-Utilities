## $math.in_0: number to shift
#> $math.in_1: input to bit_shift
#> $math.out_0: shifted number

#> $math.temp_0: in_0 holder
#> $math.temp_1: in_1 holder
#> $math.temp_2: multiplier

#assign initial values
scoreboard players operation $math.temp_0 du_data = $math.in_0 du_data
scoreboard players operation $math.temp_1 du_data = $math.in_1 du_data

scoreboard players reset $math.temp_2 du_data
scoreboard players set $cons.2 du_data 2

#setup 
scoreboard players operation $math.out_0 du_data = $math.temp_0 du_data
scoreboard players operation $math.out_0 du_data += $math.temp_1 du_data

# AND calculation:
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players set $math.temp_2 du_data -2147483648

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 1073741824

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 536870912

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 268435456

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 134217728

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 67108864

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 33554432

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 16777216

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 8388608

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 4194304

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 2097152

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 1048576

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 524288

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 262144

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 131072

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 65536

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 32768

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 16384

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 8192

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 4096

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 2048

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 1024

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 512

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 256

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 128

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 64

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 32

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 16

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 8

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 4

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 2

scoreboard players operation $math.temp_0 du_data *= $cons.2 du_data
scoreboard players operation $math.temp_1 du_data *= $cons.2 du_data
execute if score $math.temp_0 du_data matches ..-1 if score $math.temp_1 du_data matches ..-1 run scoreboard players add $math.temp_2 du_data 1
# (End of AND calculation)

scoreboard players operation $math.out_0 du_data -= $math.temp_2 du_data
scoreboard players operation $math.out_0 du_data -= $math.temp_2 du_data
