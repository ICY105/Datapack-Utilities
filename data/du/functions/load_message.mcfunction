
scoreboard players set $install du_data 1

#verify minecraft version
execute unless score $minecraft.ver du_data matches 162 run scoreboard players set $install du_data 0
execute unless score $minecraft.ver du_data matches 162 run tellraw @a [{"text":"Error: Datapack Utils v2.2.1d requires Minecraft +1.16.2. Click [here] to go to the DU download page for alternate releases.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install du_data matches 1 run tellraw @a [{"text":"[Loaded Datapack Utils v2.2.1d]","color":"dark_green"}]


