
schedule function du:main 1t

#Base
function du:base/base

#Player
execute if score $base.timer_2 du_data matches 0 as @e[tag=du_click_entity] at @s run function du:player/clickdetect/tick
execute as @a at @s run function du:player/player

#Items
execute as @e[type=item,tag=!du_item_checked,tag=!global.ignore] at @s run function du:base/items

#Custom Furnace
execute if score $base.timer_20 du_data matches 2 as @e[tag=du_furnace] at @s run function du:custom_furnace/main
execute as @e[tag=du_fur_active] at @s run function du:custom_furnace/process_smelt

#Custom Campfire
execute if score $base.timer_20 du_data matches 3 as @e[tag=du_campfire] at @s run function du:custom_campfire/main

#Custom Crafter
execute as @e[tag=du_crafter] at @s if entity @p[distance=..8] run function du:custom_crafter/main

#Pre-generator
execute if score $base.timer_100 du_data matches 0 if data storage du:temp pregen run function du:world/pregen/tick
