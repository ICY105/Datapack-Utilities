### config values
# Y value
scoreboard players operation in_0 du_data = in_5 du_data
scoreboard players operation in_0 du_data -= in_4 du_data
function du:math/random
scoreboard players operation temp_5 du_data = in_4 du_data
scoreboard players operation temp_5 du_data += out_0 du_data

# X value
scoreboard players set in_0 du_data 14
function du:math/random
scoreboard players operation temp_6 du_data = out_0 du_data

# Z value
scoreboard players set in_0 du_data 14
function du:math/random
scoreboard players operation temp_7 du_data = out_0 du_data

#vein size
scoreboard players operation in_0 du_data = in_9 du_data
scoreboard players operation in_0 du_data -= in_8 du_data
function du:math/random
scoreboard players operation temp_8 du_data = in_8 du_data
scoreboard players operation temp_8 du_data += out_0 du_data

### transfer scores
#id
execute if score in_2 du_data matches 1 store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].id
execute if score in_2 du_data matches 0 store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_overworld[0].id
execute if score in_2 du_data matches -1 store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].id
#y value
scoreboard players operation temp_1 du_data = temp_5 du_data
#x value
scoreboard players operation temp_2 du_data = temp_6 du_data
#z value
scoreboard players operation temp_3 du_data = temp_7 du_data
#vein size
scoreboard players operation temp_4 du_data = temp_8 du_data

function du:world/generation/ore_gen/displace_x

scoreboard players remove in_6 du_data 1
execute if score in_6 du_data matches 1.. run function du:world/generation/ore_gen/start_2

