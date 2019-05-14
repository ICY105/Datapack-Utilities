
scoreboard players set out_1 du_data 0

#self powered
function du:world/blocks/is_powered
execute if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 2

#other powered
execute if score out_1 du_data matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

execute if score out_1 du_data matches 0 positioned ~ ~-1 ~ unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

execute if score out_1 du_data matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

execute if score out_1 du_data matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

execute if score out_1 du_data matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

execute if score out_1 du_data matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #du:internal/redstone/transparent run function du:world/blocks/is_powered
execute if score out_1 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_1 du_data 1

### Self Active

#dynamic
execute if score out_1 du_data matches 0 if block ~ ~1 ~ #du:internal/redstone/weak_power_top unless block ~ ~1 ~ #du:internal/redstone/strong_power_top[power=0] unless block ~ ~1 ~ #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1
execute if score out_1 du_data matches 0 if block ~ ~-1 ~ #du:internal/redstone/weak_power_bottom unless block ~ ~-1 ~ #du:internal/redstone/weak_power_bottom[power=0] unless block ~ ~-1 ~ #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1
execute if score out_1 du_data matches 0 if block ~1 ~ ~ #du:internal/redstone/weak_power_side unless block ~1 ~ ~ #du:internal/redstone/weak_power_side[power=0] unless block ~1 ~ ~ #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1
execute if score out_1 du_data matches 0 if block ~-1 ~ ~ #du:internal/redstone/weak_power_side unless block ~-1 ~ ~ #du:internal/redstone/weak_power_side[power=0] unless block ~-1 ~ ~ #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1
execute if score out_1 du_data matches 0 if block ~ ~ ~1 #du:internal/redstone/weak_power_side unless block ~ ~ ~1 #du:internal/redstone/weak_power_side[power=0] unless block ~ ~ ~1 #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1
execute if score out_1 du_data matches 0 if block ~ ~ ~-1 #du:internal/redstone/weak_power_side unless block ~ ~ ~-1 #du:internal/redstone/weak_power_side[power=0] unless block ~ ~ ~-1 #du:internal/redstone/weak_power_top[powered=false] run scoreboard players set out_1 du_data 1

#redstone torch
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set out_1 du_data 1
execute if block ~1 ~ ~ #du:internal/redstone/redstone_torch[lit=true] run scoreboard players set out_1 du_data 1
execute if block ~-1 ~ ~ #du:internal/redstone/redstone_torch[lit=true] run scoreboard players set out_1 du_data 1
execute if block ~ ~ ~1 #du:internal/redstone/redstone_torch[lit=true] run scoreboard players set out_1 du_data 1
execute if block ~ ~ ~-1 #du:internal/redstone/redstone_torch[lit=true] run scoreboard players set out_1 du_data 1

scoreboard players operation out_0 du_data = out_1 du_data
