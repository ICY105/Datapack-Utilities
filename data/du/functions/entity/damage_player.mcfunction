
#modify health
execute store result score $entity.out_1 du_data run attribute @s minecraft:generic.max_health get 10
execute store result score $entity.temp_1 du_data run data get entity @s Health 10

scoreboard players operation $entity.temp_0 du_data = $entity.out_1 du_data
scoreboard players operation $entity.temp_1 du_data -= $entity.out_0 du_data
scoreboard players operation $entity.temp_0 du_data -= $entity.temp_1 du_data

execute if entity @s[gamemode=creative] run scoreboard players set $entity.temp_0 du_data -1
execute if entity @s[gamemode=spectator] run scoreboard players set $entity.temp_0 du_data -1
execute if score $entity.temp_0 du_data >= $entity.out_1 du_data run function du:entity/reset_damage/reset_2
execute if score $entity.temp_0 du_data >= $entity.out_1 du_data run kill @s

#apply damage
execute if score $base.timer_10 du_data matches 0 run function du:entity/apply_damage/rot_0
execute if score $base.timer_10 du_data matches 1 run function du:entity/apply_damage/rot_1
execute if score $base.timer_10 du_data matches 2 run function du:entity/apply_damage/rot_2
execute if score $base.timer_10 du_data matches 3 run function du:entity/apply_damage/rot_3
execute if score $base.timer_10 du_data matches 4 run function du:entity/apply_damage/rot_4
execute if score $base.timer_10 du_data matches 5 run function du:entity/apply_damage/rot_5
execute if score $base.timer_10 du_data matches 6 run function du:entity/apply_damage/rot_6
execute if score $base.timer_10 du_data matches 7 run function du:entity/apply_damage/rot_7
execute if score $base.timer_10 du_data matches 8 run function du:entity/apply_damage/rot_8
execute if score $base.timer_10 du_data matches 9 run function du:entity/apply_damage/rot_9

tag @s add du_damage_reset
effect give @s minecraft:resistance 1 5 true
effect give @s minecraft:instant_damage 1 0 true
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
