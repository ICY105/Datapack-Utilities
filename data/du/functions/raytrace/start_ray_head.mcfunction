
scoreboard players set in_0 du_data 120
function du:raytrace/move_ray_head
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function #du:place_head
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle flame ~ ~1 ~ 0 0 0 0 1 force
kill @s
