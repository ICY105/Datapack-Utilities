
scoreboard players set $install du_data 1

#check for 1.16
function du:base/check_version
execute unless score $install.ver du_data matches 16 run scoreboard players set $install du_data 0
execute unless score $install.ver du_data matches 16 run tellraw @a [{"text":"Error: Datapack Utils v2.2.0a requires Minecraft 1.16.X. Click [here] to go to the DU download page for alternate releases.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install du_data matches 1 run tellraw @a [{"text":"[Loaded Datapack Utils v2.2.0a]","color":"dark_green"}]


