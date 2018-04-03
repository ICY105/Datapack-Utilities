
#in_0: input angle in degrees, multiplied by 10
#out_0: sine of angle result, also multiplied by 10

# This function guarantees that in_0 will be the same as before execution
# The multiplication by 10 is to keep as much accuracy as possible while using integer math in the scoreboard.
# This is only an approximation of course
# Unfortunately, this will have a maximum numerical error of 1 (0.1 when scaled back down by 10), which can be up to ~50% error at some values
# You can see my error calculations as well as a graph of the function here: https://www.desmos.com/calculator/nzib6wjt80
# Algorithm taken from https://en.wikipedia.org/wiki/Bhaskara_I%27s_sine_approximation_formula

# ---------------------------------------

# Setting up angle into range, while keeping the value of in_0 constant in the end.
scoreboard players operation temp_3 du_data = in_0 du_data
function du:math/boundrange 
scoreboard players operation in_0 du_data >< temp_3 du_data 

scoreboard players set temp_0 du_data 0
scoreboard players set temp_1 du_data -1
execute if score temp_3 du_data matches ..0 run scoreboard players set temp_0 1
execute if score temp_3 du_data matches ..0 run scoreboard players operation temp_3 du_data *= temp_1 du_data 

# Compute sine
scoreboard players set temp_1 du_data 1800
scoreboard players operation temp_1 du_data -= temp_3 du_data
scoreboard players operation temp_1 du_data *= temp_3 du_data
scoreboard players set out_0 du_data 40
scoreboard players operation out_0 du_data *= temp_1 du_data

scoreboard players set temp_2 du_data 4050000
scoreboard players operation temp_2 du_data -= temp_1 du_data
scoreboard players operation out_0 du_data /= temp_2 du_data

scoreboard players set temp_1 du_data -1
execute if score temp_0 du_data matches 1 run scoreboard players operation out_0 du_data *= temp_1 du_data
