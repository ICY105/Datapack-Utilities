
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

#modify health
execute store result score $entity.out_1 du_data run attribute @s minecraft:generic.max_health get 10
execute store result score $entity.temp_1 du_data run data get entity @s Health 10 

scoreboard players operation $entity.temp_0 du_data = $entity.out_1 du_data
scoreboard players operation $entity.temp_1 du_data -= $entity.out_0 du_data
scoreboard players operation $entity.temp_0 du_data -= $entity.temp_1 du_data

tag @s add du_damage_reset
schedule function du:entity/damage/damage_reset 1t
execute if score $entity.temp_0 du_data >= $entity.out_1 du_data run kill @s

execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 500.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-f "generic.max_health" -50 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 500.. run scoreboard players remove $entity.temp_0 du_data 500
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-e "generic.max_health" -10 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run scoreboard players remove $entity.temp_0 du_data 100
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-d "generic.max_health" -10 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run scoreboard players remove $entity.temp_0 du_data 100
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-c "generic.max_health" -10 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run scoreboard players remove $entity.temp_0 du_data 100
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-b "generic.max_health" -10 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 100.. run scoreboard players remove $entity.temp_0 du_data 100

execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 50.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-a "generic.max_health" -5 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 50.. run scoreboard players remove $entity.temp_0 du_data 50
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-9 "generic.max_health" -1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run scoreboard players remove $entity.temp_0 du_data 10
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-8 "generic.max_health" -1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run scoreboard players remove $entity.temp_0 du_data 10
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-7 "generic.max_health" -1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run scoreboard players remove $entity.temp_0 du_data 10
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-6 "generic.max_health" -1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 10.. run scoreboard players remove $entity.temp_0 du_data 10

execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 5.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-5 "generic.max_health" -0.5 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 5.. run scoreboard players remove $entity.temp_0 du_data 5
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-4 "generic.max_health" -0.1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run scoreboard players remove $entity.temp_0 du_data 1
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-3 "generic.max_health" -0.1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run scoreboard players remove $entity.temp_0 du_data 1
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-2 "generic.max_health" -0.1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run scoreboard players remove $entity.temp_0 du_data 1
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-1 "generic.max_health" -0.1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run scoreboard players remove $entity.temp_0 du_data 1
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run attribute @s minecraft:generic.max_health modifier add a-b-c-d-0 "generic.max_health" -0.1 add
execute if entity @s[tag=du_damage_reset] if score $entity.temp_0 du_data matches 1.. run scoreboard players remove $entity.temp_0 du_data 1

effect give @s minecraft:instant_damage
effect give @s minecraft:instant_health
