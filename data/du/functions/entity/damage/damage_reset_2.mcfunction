

execute store result score $entity.temp_0 du_data run data get entity @s Health 10
scoreboard players remove $entity.temp_0 du_data 1
execute store result score $entity.temp_1 du_data run attribute @s minecraft:generic.max_health get 10

execute if score $entity.temp_0 du_data <= $entity.temp_1 du_data run function du:entity/damage/damage_reset_3
execute if score $entity.temp_0 du_data > $entity.temp_1 du_data run schedule function du:entity/damage/damage_reset 1t
