
# in_0: input angle in degrees, multiplied by 10
# out_0: equivalent angle bounded to the range [-1800,1800]

# This function is for use in the sin function, but if you find it useful you can use it directly

execute if score in_0 du_data matches -1800..1800 run scoreboard players operation out_0 du_data = in_0 du_data 
execute if score in_0 du_data matches 1801.. run scoreboard players remove in_0 du_data 3600
execute if score in_0 du_data matches ..-1799 run scoreboard players add in_0 du_data 3600
execute unless score in_0 du_data matches -1800..1800 run function du:math/boundrange