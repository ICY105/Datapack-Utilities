
scoreboard players set $install du_data 1

#check for 1.15
scoreboard players set $install.15 du_data 0
function du:base/check_1.15
execute if score $install.15 du_data matches 0 run scoreboard players set $install du_data 0
execute if score $install.15 du_data matches 0 run tellraw @a [{"text":"Error: This version of Datapack Utils requires Minecraft +1.15. Click [here] to download the latest version for 1.14 (2.0.2a).","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases/tag/2.0.2a"}}]

#print install message
execute if score $install du_data matches 1 run tellraw @a [{"text":"[Loaded Datapack Utils v2.1.3]","color":"dark_green"}]


