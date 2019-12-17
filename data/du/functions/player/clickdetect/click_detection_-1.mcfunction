scoreboard players operation temp_0 du_data = @s du_uuid

execute if entity @s[tag=!du_click_active] run summon spider ~ 0 ~ {Tags:["du_click_entity","du_click_-1"],DeathLootTable:"minecraft:empty",NoGravity:1b,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:20000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f}
execute if entity @s[tag=!du_click_active] as @e[type=spider,tag=du_click_entity] unless score @s du_data matches ..2147483647 run scoreboard players operation @s du_data = temp_0 du_data

tag @s add du_click_active

execute as @e[tag=du_click_entity,type=spider] if score @s du_data = temp_0 du_data positioned ~ ~1 ~ run tp @s ^ ^ ^1

tag @s remove du_left_click
tag @s[tag=du_hit_entity] add du_left_click
