
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

scoreboard players set $entity.temp_1 du_data 5
scoreboard players operation $entity.temp_1 du_data -= $entity.temp_0 du_data

scoreboard players operation $entity.out_0 du_data *= $entity.temp_1 du_data
scoreboard players operation $entity.out_0 du_data /= $cons.5 du_data

#modify health
execute store result score $entity.out_1 du_data run attribute @s minecraft:generic.max_health get 10
execute store result score $entity.temp_1 du_data run data get entity @s Health 10

effect give @s minecraft:wither 1 1 true
execute unless score $entity.temp_1 du_data matches ..15 run effect give @s[type=#du:undead] minecraft:instant_damage 1 0 true
execute unless score $entity.temp_1 du_data matches ..15 run effect give @s[type=!#du:undead] minecraft:instant_health 1 0 true

scoreboard players operation $entity.temp_0 du_data = $entity.out_1 du_data
scoreboard players operation $entity.temp_1 du_data -= $entity.out_0 du_data
scoreboard players operation $entity.temp_0 du_data -= $entity.temp_1 du_data

tag @s add du_damage_reset
schedule function du:entity/damage/damage_reset 1t

execute if entity @s[type=player,gamemode=creative] run scoreboard players set $entity.temp_0 du_data -1
execute if entity @s[type=player,gamemode=spectator] run scoreboard players set $entity.temp_0 du_data -1
execute if score $entity.temp_0 du_data >= $entity.out_1 du_data run function du:entity/damage/damage_reset_3
execute if score $entity.temp_0 du_data >= $entity.out_1 du_data run kill @s

execute if score $base.timer_10 du_data matches 0 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_0
execute if score $base.timer_10 du_data matches 1 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_1
execute if score $base.timer_10 du_data matches 2 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_2
execute if score $base.timer_10 du_data matches 3 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_3
execute if score $base.timer_10 du_data matches 4 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_4
execute if score $base.timer_10 du_data matches 5 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_5
execute if score $base.timer_10 du_data matches 6 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_6
execute if score $base.timer_10 du_data matches 7 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_7
execute if score $base.timer_10 du_data matches 8 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_8
execute if score $base.timer_10 du_data matches 9 if entity @s[tag=du_damage_reset] run function du:entity/damage/apply_damage_9

