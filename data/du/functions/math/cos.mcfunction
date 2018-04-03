
#in_0: input angle in degrees, multiplied by 10
#out_0: cosine of angle result, also multiplied by 10

# Unfortunately, this function does not guarantee that in_0 will be the same as before execution, unlike the sin function
# See the sin function for detailed notes on the implementation and error of this function

scoreboard players set temp_0 du_data 900
scoreboard players operation temp_0 du_data -= in_0 du_data
scoreboard players operation in_0 du_data = temp_0 du_data
function du:math/sin