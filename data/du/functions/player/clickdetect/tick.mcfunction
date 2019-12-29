

execute store result score $player.temp_0 du_data unless entity @p[distance=..8,tag=du_click_active] 
execute if score $player.temp_0 du_data matches 1 run tp @s ~ -300 ~
execute if score $player.temp_0 du_data matches 1 run kill @s

team join du_nopush @s[team=!du_nopush]
