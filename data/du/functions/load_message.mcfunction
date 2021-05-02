
#mark as installed
scoreboard players set $install du_data 1

#get data version
execute store result score $minecraft.version du_data run data get entity @p DataVersion

#verify minecraft version
execute unless score $minecraft.version du_data matches 2711.. run scoreboard players set $install du_data 0
execute unless score $minecraft.version du_data matches 2711.. run tellraw @a [{"text":"Error: Datapack Utils v2.2.1d requires Minecraft +1.17. Click [here] to go to the DU download page for alternate releases.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]
