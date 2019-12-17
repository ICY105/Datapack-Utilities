
# $math.$math.in_0: number to raise to a power
# $math.in_1: power
# $math.out_0: result

scoreboard players operation $math.temp_0 du_data = $math.in_1 du_data

execute if score $math.temp_0 du_data matches 0 run scoreboard players set $math.out_0 du_data 1
execute if score $math.temp_0 du_data matches 1.. run scoreboard players operation $math.out_0 du_data = $math.in_0 du_data

execute if score $math.temp_0 du_data matches 2.. run function du:math/pow_2
