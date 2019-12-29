
scoreboard players operation $player.in_0 du_data = @s du_uuid
scoreboard players set $player.in_1 du_data 1
execute if entity @s[tag=!du_click_active] run function du:player/clickdetect/summon_villagers
tag @s add du_click_active

execute if entity @s[tag=!du_moving] as @e[tag=du_click_entity] if score @s du_data = $player.in_0 du_data run tp @s ~ ~1 ~
execute if entity @s[tag=du_moving] as @e[tag=du_click_entity] if score @s du_data = $player.in_0 du_data positioned ~ ~1 ~ run tp @s ^ ^ ^1.5

tag @s remove du_right_click
tag @s[scores={du_talked=1..}] add du_right_click

tag @s remove du_left_click
tag @s[tag=du_hit_entity] add du_left_click
