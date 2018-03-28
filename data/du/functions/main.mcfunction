
function du:base/base
execute as @a at @s run function du:player/player
execute as @a[scores={du_placehead=1..}] at @s run function du:player/place_head
execute as @a at @s run function du:clickdetect/clickdetect
execute if score timer_100 du_data matches 0 as @a[tag=!spectator] at @s run function du:worldgen/worldgen
