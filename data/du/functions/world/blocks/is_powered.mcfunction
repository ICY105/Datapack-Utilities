
scoreboard players set $world.out_0 du_data 0

#generic: static
execute if block ~ ~1 ~ #du:internal/redstone/strong_power_top unless block ~ ~1 ~ #du:internal/redstone/strong_power_top[power=0] unless block ~ ~1 ~ #du:internal/redstone/strong_power_top[powered=false] run scoreboard players set $world.out_0 du_data 1
execute if block ~ ~-1 ~ #du:internal/redstone/strong_power_bottom[powered=true,face=ceiling] run scoreboard players set $world.out_0 du_data 1
execute if block ~1 ~ ~ #du:internal/redstone/strong_power_side[powered=true,facing=east] run scoreboard players set $world.out_0 du_data 1
execute if block ~-1 ~ ~ #du:internal/redstone/strong_power_side[powered=true,facing=west] run scoreboard players set $world.out_0 du_data 1
execute if block ~ ~ ~1 #du:internal/redstone/strong_power_side[powered=true,facing=south] run scoreboard players set $world.out_0 du_data 1
execute if block ~ ~ ~-1 #du:internal/redstone/strong_power_side[powered=true,facing=north] run scoreboard players set $world.out_0 du_data 1

#redstone torch
execute if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run scoreboard players set $world.out_0 du_data 1

#redstone dust
execute if block ~1 ~ ~ minecraft:redstone_wire[north=none,south=none] unless block ~1 ~ ~ minecraft:redstone_wire[east=none] unless block ~1 ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set $world.out_0 du_data 1
execute if block ~-1 ~ ~ minecraft:redstone_wire[north=none,south=none] unless block ~1 ~ ~ minecraft:redstone_wire[west=none] unless block ~-1 ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set $world.out_0 du_data 1
execute if block ~ ~ ~1 minecraft:redstone_wire[east=none,west=none] unless block ~1 ~ ~ minecraft:redstone_wire[south=none] unless block ~ ~ ~1 minecraft:redstone_wire[power=0] run scoreboard players set $world.out_0 du_data 1
execute if block ~ ~ ~-1 minecraft:redstone_wire[east=none,west=none] unless block ~1 ~ ~ minecraft:redstone_wire[north=none] unless block ~ ~ ~-1 minecraft:redstone_wire[power=0] run scoreboard players set $world.out_0 du_data 1

#check opaque
execute if block ~ ~ ~ #du:internal/redstone/transparent run scoreboard players set $world.out_0 du_data 0
