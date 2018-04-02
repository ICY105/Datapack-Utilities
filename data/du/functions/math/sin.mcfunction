
#in_0: input angle in radians, multiplied by 1,000,000
#out_0: sine of angle result, also multiplied by 1,000,000

# This is only an approximation of course. 
# The multiplication by 1,000,000 is to keep accuracy while using integer math in the scoreboard.
# Algorithm taken from http://lab.polygonal.de/2007/07/18/fast-and-accurate-sinecosine-approximation/

# ---------------------------------------

# Bound range

scoreboard players set temp_1 du_data 6283185

scoreboard players operation temp_2 du_data = in_0 du_data 

scoreboard players set temp_0 du_data -3141592
execute if score temp_2 du_data < temp_0 du_data run scoreboard players operation in_0 du_data += temp_1 du_data 

scoreboard players set temp_0 du_data 3141592
execute if score temp_2 du_data > temp_0 du_data run scoreboard players operation in_0 du_data -= temp_1 du_data 

# Compute sine

scoreboard players set temp_0 du_data 0
scoreboard players set temp_3 du_data -1

scoreboard players set out_0 du_data 1273239
scoreboard players operation out_0 du_data *= in_0 du_data 

scoreboard players set temp_1 du_data 405284
scoreboard players operation temp_1 du_data *= in_0 du_data 
scoreboard players operation temp_1 du_data *= in_0 du_data

execute if score in_0 du_data < temp_0 du_data run scoreboard players operation out_0 du_data += temp_1 du_data
execute if score in_0 du_data >= temp_0 du_data run scoreboard players operation out_0 du_data -= temp_1 du_data

# scoreboard players operation temp_1 du_data = out_0 du_data 
# scoreboard players operation temp_2 du_data = out_0 du_data 
# scoreboard players operation temp_2 du_data *= temp_3 du_data 
# execute if score out_0 du_data < temp_0 du_data run scoreboard players operation temp_1 du_data *= temp_2 du_data
# execute if score out_0 du_data >= temp_0 du_data run scoreboard players operation temp_1 du_data *= out_0 du_data
# scoreboard players operation temp_1 du_data -= out_0 du_data
# scoreboard players set temp_2 du_data 225000
# scoreboard players operation temp_1 du_data *= temp_2 du_data
# scoreboard players operation temp_1 du_data += out_0 du_data
# scoreboard players operation out_0 du_data = temp_1 du_data


