
scoreboard players set $install du_data 1

#check for 1.15
function du:base/check_version
execute unless score $install.ver du_data matches 15 run scoreboard players set $install du_data 0
execute unless score $install.ver du_data matches 15 run tellraw @a [{"text":"Error: This version of Datapack Utils requires Minecraft 1.15.x. Click [here] to download alternate versions.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install du_data matches 1 run tellraw @a [{"text":"[Loaded Datapack Utils v2.1.5]","color":"dark_green"}]


