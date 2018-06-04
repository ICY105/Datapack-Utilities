scoreboard players set in_0 du_data 101
scoreboard players set temp_0 du_data 40
function du:player/durability/damage_armor

execute if score temp_2 du_data matches ..0 run replaceitem entity @s armor.legs air
execute if score temp_2 du_data matches ..0 run playsound minecraft:item.shield.break player @s