
scoreboard players operation $player.in_0 du_data = @s du_uuid
scoreboard players set $player.in_1 du_data 5
execute if entity @s[tag=!du_click_active] run function du:player/clickdetect/summon_villagers
tag @s add du_click_active

execute if entity @s[tag=!du_moving] as @e[tag=du_click_entity,type=villager] if score @s du_data = $player.in_0 du_data run tp @s ~ ~1 ~
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity,type=villager,tag=du_click_1] if score @s du_data = $player.in_0 du_data positioned ~ ~0.5 ~ run tp @s ^1 ^ ^
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity,type=villager,tag=du_click_2] if score @s du_data = $player.in_0 du_data positioned ~ ~0.5 ~ run tp @s ^0.5 ^ ^1
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity,type=villager,tag=du_click_3] if score @s du_data = $player.in_0 du_data positioned ~ ~0.5 ~ run tp @s ^ ^ ^1.5
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity,type=villager,tag=du_click_4] if score @s du_data = $player.in_0 du_data positioned ~ ~0.5 ~ run tp @s ^-0.5 ^ ^1
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity,type=villager,tag=du_click_5] if score @s du_data = $player.in_0 du_data positioned ~ ~0.5 ~ run tp @s ^-1 ^ ^

tag @s remove du_right_click
tag @s[scores={du_talked=1..}] add du_right_click

tag @s remove du_left_click
tag @s[tag=du_hit_entity] add du_left_click

