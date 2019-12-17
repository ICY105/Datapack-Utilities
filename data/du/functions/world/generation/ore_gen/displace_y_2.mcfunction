
scoreboard players set $math.temp_0 du_data 16
scoreboard players operation $world.temp_2 du_data %= $math.temp_0 du_data

execute if score $world.temp_2 du_data matches 0 positioned ~ ~0 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 1 positioned ~ ~1 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 2 positioned ~ ~2 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 3 positioned ~ ~3 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 4 positioned ~ ~4 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 5 positioned ~ ~5 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 6 positioned ~ ~6 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 7 positioned ~ ~7 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 8 positioned ~ ~8 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 9 positioned ~ ~9 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 10 positioned ~ ~10 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 11 positioned ~ ~11 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 12 positioned ~ ~12 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 13 positioned ~ ~13 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 14 positioned ~ ~14 ~ run function du:world/generation/ore_gen/spawn_ore
execute if score $world.temp_2 du_data matches 15 positioned ~ ~15 ~ run function du:world/generation/ore_gen/spawn_ore
