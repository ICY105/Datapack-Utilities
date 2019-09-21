
##in_7: min y
##in_8: max y
##in_9: min veins
##in_10: max veins
##in_11: min vein size
##in_12: max vein size

# number of veins
scoreboard players operation in_0 du_data = in_10 du_data
scoreboard players operation in_0 du_data -= in_9 du_data
function du:math/random
scoreboard players operation in_9 du_data += out_0 du_data

## run generate function
function du:world/generation/ore_gen/start_2
