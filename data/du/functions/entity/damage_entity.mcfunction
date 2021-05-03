
# $entity.in_0 du_data: damage to add to entity, to 1 decimal place
# $entity.in_1 du_data: 1 if should ignore armor

#calculate armor redux
execute store result score $entity.temp_0 du_data run attribute @s minecraft:generic.armor get 10
execute store result score $entity.temp_1 du_data run attribute @s minecraft:generic.armor_toughness get 10

scoreboard players operation $entity.temp_2 du_data = $entity.temp_0 du_data
scoreboard players operation $entity.temp_2 du_data /= $cons.5 du_data

scoreboard players operation $entity.temp_3 du_data = $entity.temp_0 du_data
scoreboard players operation $entity.temp_4 du_data = $entity.in_0 du_data
scoreboard players operation $entity.temp_5 du_data = $entity.temp_1 du_data
scoreboard players operation $entity.temp_5 du_data /= $cons.4 du_data
scoreboard players add $entity.temp_5 du_data 2
scoreboard players operation $entity.temp_4 du_data /= $entity.temp_5 du_data
scoreboard players operation $entity.temp_3 du_data -= $entity.temp_4 du_data

execute if score $entity.temp_3 du_data > $entity.temp_2 du_data run scoreboard players operation $entity.temp_2 du_data = $entity.temp_3 du_data
execute if score $entity.temp_2 du_data matches 200.. run scoreboard players set $entity.temp_2 du_data 200
scoreboard players operation $entity.temp_2 du_data *= $cons.10 du_data
scoreboard players operation $entity.temp_2 du_data /= $cons.25 du_data
scoreboard players set $entity.out_0 du_data 100
scoreboard players operation $entity.out_0 du_data -= $entity.temp_2 du_data

execute if score $entity.in_1 du_data matches 0 run scoreboard players operation $entity.out_0 du_data *= $entity.in_0 du_data
execute if score $entity.in_1 du_data matches 0 run scoreboard players operation $entity.out_0 du_data /= $cons.100 du_data
execute if score $entity.in_1 du_data matches 1 run scoreboard players operation $entity.out_0 du_data = $entity.in_0 du_data

#apply resistance
execute store result score $entity.temp_0 du_data run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $entity.temp_0 du_data 1

execute if score $entity.temp_0 du_data matches ..-1 store result score $entity.temp_1 du_data run data get entity @s ActiveEffects[{Id:11b}].HiddenEffect{Id:11b}.Amplifier
execute if score $entity.temp_0 du_data matches ..-1 if data entity @s ActiveEffects[{Id:11b}].HiddenEffect{Id:11b} run scoreboard players add $entity.temp_0 du_data 1
execute if score $entity.temp_0 du_data matches ..-1 run scoreboard players operation $entity.temp_0 du_data = $entity.temp_1 du_data

scoreboard players set $entity.temp_1 du_data 5
scoreboard players operation $entity.temp_1 du_data -= $entity.temp_0 du_data

scoreboard players operation $entity.out_0 du_data *= $entity.temp_1 du_data
scoreboard players operation $entity.out_0 du_data /= $cons.5 du_data

#entity type
execute if score $entity.out_0 du_data matches 1.. if entity @s[type=player] run function du:entity/damage_player
execute if score $entity.out_0 du_data matches 1.. if entity @s[type=!player] run function du:entity/damage_mob

