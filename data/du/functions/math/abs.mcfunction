
# $math.in_0: number to run absolute value
# $math.out_0: result

scoreboard players operation $math.out_0 du_data = $math.in_0 du_data
scoreboard players set $math.temp_0 du_data -1
execute if score $math.out_0 du_data matches ..-1 run scoreboard players operation $math.out_0 du_data *= $math.temp_0 du_data
