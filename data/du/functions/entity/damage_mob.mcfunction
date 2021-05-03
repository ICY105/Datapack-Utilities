
execute store result score $entity.temp_0 du_data run data get entity @s Health 10

scoreboard players operation $entity.temp_0 du_data -= $entity.out_0 du_data
execute store result entity @s Health float 0.1 run scoreboard players get $entity.temp_0 du_data

effect give @s minecraft:resistance 1 255 true
effect give @s[type=!#du:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#du:undead] minecraft:instant_health 1 0 true
execute if entity @s[type=wither] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-0.25,0.0],Item:{id:"minecraft:polished_blackstone_button",Count:1b}}
