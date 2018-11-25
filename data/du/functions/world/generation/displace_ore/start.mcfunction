
# number of veins
scoreboard players operation in_0 du_data = in_7 du_data
scoreboard players operation in_0 du_data -= in_6 du_data
function du:math/random
scoreboard players operation in_6 du_data += out_0 du_data

## run generate function
function du:world/generation/displace_ore/start_2
