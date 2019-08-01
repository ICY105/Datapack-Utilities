
#Base
function du:base/base

#Player
execute as @a at @s run function du:player/player
execute if score timer_100 du_data matches 0 run function du:player/data/main

#Items
execute as @e[type=item,tag=!du_item_checked] at @s run function du:base/items

#Worldgen
execute if score worldgen du_data matches 1 if score is_loaded du_data matches 1.. if score timer_20 du_data matches 1 as @a[gamemode=!spectator] at @s run function du:world/generation/worldgen

#Custom Furnace
execute if score timer_20 du_data matches 2 as @e[tag=du_furnace] at @s run function du:custom_furnace/main
execute as @e[tag=du_fur_active] at @s run function du:custom_furnace/process_smelt

#Custom Campire
execute if score timer_20 du_data matches 3 as @e[tag=du_campfire] at @s run function du:custom_campfire/main

#Custom Crafter
execute as @e[tag=du_crafter] at @s if entity @p[distance=..8] run function du:custom_crafter/main