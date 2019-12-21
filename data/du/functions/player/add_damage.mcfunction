# $player.in_0 du_data: damage to add to player, to 1 decimal place
# $player.in_1 du_data: 1 if should ignore armor

scoreboard players set $player.temp_0 du_data 100
scoreboard players set $player.temp_1 du_data 4
scoreboard players operation $player.temp_1 du_data *= @s du_armor
scoreboard players operation $player.temp_0 du_data -= $player.temp_1 du_data
scoreboard players set $player.temp_1 du_data 100

execute unless score $player.in_1 du_data matches 1 run scoreboard players operation $player.in_0 du_data *= $player.temp_0 du_data
execute unless score $player.in_1 du_data matches 1 run scoreboard players operation $player.in_0 du_data /= $player.temp_1 du_data

scoreboard players operation @s du_health += $player.in_0 du_data
